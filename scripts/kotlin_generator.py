#!/usr/bin/env python3
import json
import argparse
import os

parser = argparse.ArgumentParser(description='Create Kotlin file from Json schema')
parser.add_argument('-s', '--source', dest='json_schema',
                   help='Json shema file', required=True)

args = parser.parse_args()

# Capitalize also change the next letter.
def firstLetterUp(str):
    return str[0].upper() + str[1:]

class Enum(object):
    """docstring for Enum"""
    def __init__(self, name, values):
        super(Enum, self).__init__()
        self.name = name
        self.values = values
        
class Member(object):
    """docstring for Member"""
    def __init__(self, name, type, enum, description, required):
        super(Member, self).__init__()
        self.name = name
        self.type = type
        self.enum = enum
        self.description = description
        self.required = required
    def __lt__(self, other):
        return self.name < other.name
        
with open(args.json_schema) as json_file:
    klass = os.path.basename(args.json_schema).removesuffix(".json")
    isScreen = klass == "Screen"
    data = json.load(json_file)

    # Parse
    members = list()
    enums = list()
    name = data['properties']['eventName']['enum'][0]
    required = data.get('required')
    for p in data['properties']:
        if(p == 'eventName'):
            continue
        enum = data['properties'][p].get('enum')
        if(enum):
            enums.append(Enum(firstLetterUp(p), enum))

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

    # Print output
    print("""/*
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
""")

    if(isScreen):
        itf = "VectorAnalyticsScreen"
    else:
        itf = "VectorAnalyticsEvent"

    print("import im.vector.app.features.analytics.itf.%s" % itf)
    print("")
    print("// GENERATED FILE, DO NOT EDIT")
    print("")
    print("/**")
    print(" * %s" % data["description"])
    print(" */")
    print("data class %s(" % klass)

    for member in members:
        if(member.description):
            print('    /**')
            print('     * ' + member.description)
            print('     */')
        if(member.required):
            defaultValue = ""
        else:
            defaultValue = "? = null"
        if(member.type == 'string'):
            if(member.enum):
                print('    val ' + member.name + ': ' + firstLetterUp(member.name) + defaultValue + ',')
            else:
                print('    val ' + member.name + ': String' + defaultValue + ',')                    
        elif(member.type == 'number'):
            print('    val ' + member.name + ': Double' + defaultValue + ',')
        elif(member.type == 'integer'):
            print('    val ' + member.name + ': Int' + defaultValue + ',')
        elif(member.type == 'boolean'):
            print('    val ' + member.name + ': Boolean' + defaultValue + ',')
        else:
            raise Exception("Not handled yet: %s" % member.type)

    print(") : %s {" % itf)

    for enum in enums:
        print("")
        print("    enum class %s {" % enum.name)
        enum.values.sort()
        for value in enum.values:
            print("        %s," % value)
        print("    }")
        

    print("")
    if(isScreen):
        print("    override fun getName() = screenName.name")
    else:
        print("    override fun getName() = \"%s\"" % name)

    print("")
    if(not members):
        print("    override fun getProperties(): Map<String, Any>? = null")
    else:
        print("    override fun getProperties(): Map<String, Any>? {")
        print("        return mutableMapOf<String, Any>().apply {")
        for member in members:
            if(member.name == "screenName" and isScreen):
                continue
            if member.required:
                if(member.enum):
                    print("            put(\"%s\", %s.name)" % (member.name, member.name))
                else:
                    print("            put(\"%s\", %s)" % (member.name, member.name))
            else:
                if(member.enum):
                    print("            %s?.let { put(\"%s\", it.name) }" % (member.name, member.name))
                else:
                    print("            %s?.let { put(\"%s\", it) }" % (member.name, member.name))
        print("        }.takeIf { it.isNotEmpty() }")
        print("    }")

    print("}")
