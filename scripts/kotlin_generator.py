#!/usr/bin/env python3
import json
import argparse
import os
from dataclasses import dataclass

parser = argparse.ArgumentParser(description='Create Kotlin file from Json schema')
parser.add_argument(
    '-s',
    '--source',
    dest='json_schema',
    help='Json shema file',
    required=True
)

args = parser.parse_args()

# capitalize() can also change the next letter, and I want to keep camel case.
def first_letter_up(str):
    return str[0].upper() + str[1:]

@dataclass
class Enum():
    name: str
    values: []
        
@dataclass
class Member():
    name:str
    type: str
    enum: []
    description: str
    required: bool
    def __lt__(self, other):
        return self.name < other.name
        
with open(args.json_schema) as json_file:
    klass = os.path.basename(args.json_schema).removesuffix(".json")
    isScreen = klass == "Screen"
    data = json.load(json_file)

    # Parse
    members = []
    enums = []
    name = data['properties']['eventName']['enum'][0]
    required = data.get('required')
    for p in data['properties']:
        if p == 'eventName':
            continue
        enum = data['properties'][p].get('enum')
        if enum:
            enums.append(Enum(first_letter_up(p), enum))

        members.append(
            Member(
                p,
                data['properties'][p].get('type'),
                enum,
                data['properties'][p].get('description'),
                p in required or data['properties'][p].get('required')
                )
            )
    members.sort()

    # Compute output
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
        f"// GENERATED FILE, DO NOT EDIT\n\n"
        f"/**\n"
        f" * {data.get('description')}\n"
        f" */\n"
        f"data class {klass}(\n"
    )

    for member in members:
        if member.description:
            result += (
                f'    /**\n'
                f'     * {member.description}\n'
                f'     */\n'
            )
        if member.required:
            defaultValue = ""
        else:
            defaultValue = "? = null"
        if member.type == 'string':
            if member.enum:
                result += f'    val {member.name}: {first_letter_up(member.name)}'
            else:
                result += f'    val {member.name}: String'
        elif member.type == 'number':
            result += f'    val {member.name}: Double'
        elif member.type == 'integer':
            result += f'    val {member.name}: Int'
        elif member.type == 'boolean':
            result += f'    val {member.name}: Boolean'
        else:
            raise Exception(f"Not handled yet: {member.type}")
        result += f"{defaultValue},\n"

    result += f") : {itf} " + "{\n"

    for enum in enums:
        result += "\n"
        result += f"    enum class {enum.name} " + "{\n"
        enum.values.sort()
        for value in enum.values:
            result += f"        {value},\n"
        result += "    }\n"
        

    result += "\n"
    if isScreen:
        result += f'    override fun getName() = screenName.name\n'
    else:
        result += f'    override fun getName() = "{name}"\n'

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
                    result += '            %s?.let { put("%s", it.name) }\n' % (member.name, member.name)
                else:
                    result += '            %s?.let { put("%s", it) }\n' % (member.name, member.name)
        result += "        }.takeIf { it.isNotEmpty() }\n"
        result += "    }\n"

    result += "}"
    print(result)
