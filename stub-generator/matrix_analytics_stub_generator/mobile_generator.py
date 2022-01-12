#!/usr/bin/env python3
import json
import glob
import os
from dataclasses import dataclass

# capitalize() can also change the next letter, and I want to keep camel case.
def first_letter_up(str):
    return str[0].upper() + str[1:]


# Whether the supplied class name is for the Screen event.
def is_screen_event(str):
    return str == "Screen"


# Makes an Enum object from a json property
def make_enum(name, json_property):
    values = []

    enum_dict = json_property.get("enum")
    one_of_dict = json_property.get("oneOf")

    if enum_dict:
        for value in enum_dict:
            values.append(EnumValue(value, None))
    elif one_of_dict:
        for value in one_of_dict:
            value_name = value["const"]
            description = value.get("description")
            values.append(EnumValue(value_name, description))

    if len(values) > 0:
        return Enum(first_letter_up(name), values)


# Parse the schema into members, enums and the event name.
def parse_schema(data):
    members = []
    enums = []
    event_name = data["properties"]["eventName"]["enum"][0]
    required = data.get("required")
    for p in data["properties"]:
        if p == "eventName":
            continue
        enum = make_enum(p, data["properties"][p])
        if enum:
            enums.append(enum)
        members.append(
            Member(
                p,
                data["properties"][p].get("type"),
                enum,
                data["properties"][p].get("description"),
                p in required or data["properties"][p].get("required"),
            )
        )
    members.sort()

    return (members, enums, event_name)


# Compute the output for Kotlin.
def compute_kotlin(klass, data, members, enums, event_name):
    isScreen = is_screen_event(klass)

    result = """/*
 * Copyright (c) 2021 New Vector Ltd
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package im.vector.app.features.analytics.plan

"""

    if isScreen:
        itf = "VectorAnalyticsScreen"
    else:
        itf = "VectorAnalyticsEvent"

    result += (
        f"import im.vector.app.features.analytics.itf.{itf}\n\n"
        f"// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT\n"
        f"// https://github.com/matrix-org/matrix-analytics-events/\n\n"
        f"/**\n"
        f" * {data.get('description')}\n"
        f" */\n"
        f"data class {klass}(\n"
    )

    for member in members:
        if member.description:
            result += f"    /**\n" f"     * {member.description}\n" f"     */\n"
        if member.required:
            defaultValue = ""
        else:
            defaultValue = "? = null"
        if member.type == "string":
            if member.enum:
                result += f"    val {member.name}: {first_letter_up(member.name)}"
            else:
                result += f"    val {member.name}: String"
        elif member.type == "number":
            result += f"    val {member.name}: Double"
        elif member.type == "integer":
            result += f"    val {member.name}: Int"
        elif member.type == "boolean":
            result += f"    val {member.name}: Boolean"
        else:
            raise Exception(f"Not handled yet: {member.type}")
        result += f"{defaultValue},\n"

    result += f") : {itf} " + "{\n"

    for enum in enums:
        result += "\n"
        result += f"    enum class {enum.name} " + "{\n"
        enum.values.sort()
        for value in enum.values:
            if value.description:
                result += (
                    f"        /**\n"
                    f"         * {value.description}\n"
                    f"         */\n"
                )
            result += f"        {value.name},\n"
        result += "    }\n"

    result += "\n"
    if isScreen:
        result += f"    override fun getName() = screenName.name\n"
    else:
        result += f'    override fun getName() = "{event_name}"\n'

    result += "\n"
    if not members:
        result += "    override fun getProperties(): Map<String, Any>? = null\n"
    else:
        result += "    override fun getProperties(): Map<String, Any>? {\n"
        result += "        return mutableMapOf<String, Any>().apply {\n"
        for member in members:
            if member.name == "screenName" and isScreen:
                continue
            if member.required:
                if member.enum:
                    result += f'            put("{member.name}", {member.name}.name)\n'
                else:
                    result += f'            put("{member.name}", {member.name})\n'
            else:
                if member.enum:
                    result += '            %s?.let { put("%s", it.name) }\n' % (
                        member.name,
                        member.name,
                    )
                else:
                    result += '            %s?.let { put("%s", it) }\n' % (
                        member.name,
                        member.name,
                    )
        result += "        }.takeIf { it.isNotEmpty() }\n"
        result += "    }\n"

    result += "}"
    return result


def swift_member_definition(member):
    if member.required:
        optionalSuffix = ""
    else:
        optionalSuffix = "?"
    if member.type == "string":
        if member.enum:
            definition = f"{member.name}: {first_letter_up(member.name)}"
        else:
            definition = f"{member.name}: String"
    elif member.type == "number":
        definition = f"{member.name}: Double"
    elif member.type == "integer":
        definition = f"{member.name}: Int"
    elif member.type == "boolean":
        definition = f"{member.name}: Bool"
    else:
        raise Exception(f"Not handled yet: {member.type}")
    definition += f"{optionalSuffix}"

    return definition


# Compute the output for Swift.
def compute_swift(klass, data, members, enums, event_name):
    isScreen = is_screen_event(klass)

    result = """//
// Copyright 2021 New Vector Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

"""

    if isScreen:
        itf = "AnalyticsScreenProtocol"
    else:
        itf = "AnalyticsEventProtocol"

    result += (
        "import Foundation\n\n"
        "// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT\n"
        "// https://github.com/matrix-org/matrix-analytics-events/\n\n"
        f"/// {data.get('description')}\n"
        f"extension AnalyticsEvent {{\n"
        f"    public struct {klass}: {itf} {{\n"
    )

    # Event name (constant)
    if not isScreen:
        result += f'        public let eventName = "{event_name}"\n'

    # Struct properties
    result += "\n"
    for member in members:
        if member.description:
            result += f"        /// {member.description}\n"
        result += f"        public let {swift_member_definition(member)}\n"

    # Initializer (synthesized init is lost for public structs)
    result += "\n"
    result += "        public init("
    for index, member in enumerate(members):
        result += f"{swift_member_definition(member)}"
        if index < len(members) - 1:
            result += ", "
    result += ") {\n"
    for member in members:
        result += f"            self.{member.name} = {member.name}\n"
    result += "        }\n"

    # Nested enums
    for enum in enums:
        result += "\n"
        result += f"        public enum {enum.name}: String {{\n"
        enum.values.sort()
        for value in enum.values:
            if value.description:
                result += f"            /// {value.description}\n"
            result += f"            case {value.name}\n"
        result += "        }\n"

    # Properties dictionary
    result += "\n"
    if not members:
        result += "        public var properties: [String: Any] = [:]\n"
    else:
        filteredMembers = list(
            filter(lambda member: member.name != "screenName", members)
        )
        result += "        public var properties: [String: Any] {\n"
        result += "            return [\n"
        for index, member in enumerate(filteredMembers):
            if member.enum:
                if member.required:
                    result += f'                "{member.name}": {member.name}.rawValue'
                else:
                    result += f'                "{member.name}": {member.name}?.rawValue as Any'
            else:
                if member.required:
                    result += f'                "{member.name}": {member.name}'
                else:
                    result += f'                "{member.name}": {member.name} as Any'
            if index < len(filteredMembers) - 1:
                result += ",\n"
            else:
                result += "\n"
        result += "            ]\n"
        result += "        }\n"

    result += "    }\n}\n"
    return result


@dataclass
class EnumValue:
    name: str
    description: str

    def __lt__(self, other):
        return self.name < other.name


@dataclass
class Enum:
    name: EnumValue
    values: list[object]


@dataclass
class Member:
    name: str
    type: str
    enum: list[Enum]
    description: str
    required: bool

    def __lt__(self, other):
        return self.name < other.name


def generate_stub(output_language: str, json_schema_paths: str, output_dir: str):
    for json_schema_path in json_schema_paths:
        with open(json_schema_path) as json_file:
            data = json.load(json_file)
            klass = os.path.basename(json_schema_path).removesuffix(".json")
            (members, enums, event_name) = parse_schema(data)

            if output_language in "kotlin":
                ext = ".kt"
                output = compute_kotlin(klass, data, members, enums, event_name)
            elif output_language == "swift":
                ext = ".swift"
                output = compute_swift(klass, data, members, enums, event_name)
            else:
                raise Exception(
                    f"Support for language {output_language} has not been implemented."
                )

            output_path = os.path.join(output_dir, klass + ext)
            with open(output_path, "w") as output_file:
                print(output_path)
                output_file.write(output)
