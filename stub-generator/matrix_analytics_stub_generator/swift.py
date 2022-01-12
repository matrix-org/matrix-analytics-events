from typing import List
from .schema import Schema, Member, first_letter_up, is_screen_event


def swift_member_definition(member: Member) -> str:
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


def compute_swift(schema: Schema) -> str:
    """Compute the output for Swift."""
    is_screen = is_screen_event(schema.klass)

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

    if is_screen:
        itf = "AnalyticsScreenProtocol"
    else:
        itf = "AnalyticsEventProtocol"

    result += (
        "import Foundation\n\n"
        "// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT\n"
        "// https://github.com/matrix-org/matrix-analytics-events/\n\n"
        f"/// {schema.data.get('description')}\n"
        f"extension AnalyticsEvent {{\n"
        f"    public struct {schema.klass}: {itf} {{\n"
    )

    # Event name (constant)
    if not is_screen:
        result += f'        public let eventName = "{schema.event_name}"\n'

    # Struct properties
    result += "\n"
    for member in schema.members:
        if member.description:
            result += f"        /// {member.description}\n"
        result += f"        public let {swift_member_definition(member)}\n"

    # Initializer (synthesized init is lost for public structs)
    result += "\n"
    result += "        public init("
    for index, member in enumerate(schema.members):
        result += f"{swift_member_definition(member)}"
        if index < len(schema.members) - 1:
            result += ", "
    result += ") {\n"
    for member in schema.members:
        result += f"            self.{member.name} = {member.name}\n"
    result += "        }\n"

    # Nested enums
    for enum in schema.enums:
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
    if not schema.members:
        result += "        public var properties: [String: Any] = [:]\n"
    else:
        filtered_members = list(
            filter(lambda member: member.name != "screenName", schema.members)
        )
        result += "        public var properties: [String: Any] {\n"
        result += "            return [\n"
        for index, member in enumerate(filtered_members):
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
            if index < len(filtered_members) - 1:
                result += ",\n"
            else:
                result += "\n"
        result += "            ]\n"
        result += "        }\n"

    result += "    }\n}"
    return result
