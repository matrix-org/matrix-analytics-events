import re
from .schema import Schema, is_mobile_screen_event, first_letter_up, first_letter_down, split_text

def compute_kotlin(schema: Schema) -> str:
    """Compute the output for Kotlin."""
    is_screen = is_mobile_screen_event(schema.klass)

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

    if is_screen:
        itf = "VectorAnalyticsScreen"
    elif schema.event_name:
        itf = "VectorAnalyticsEvent"
    else:
        itf = ""

    if itf:
        result += f"import im.vector.app.features.analytics.itf.{itf}\n\n"

    result += (
        f"// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT\n"
        f"// https://github.com/matrix-org/matrix-analytics-events/\n\n"
        f"/**\n"
        f"{split_text(' * ', schema.data.get('description'))}\n"
        f" */\n"
        f"data class {schema.klass}(\n"
    )

    for member in schema.members:
        validName = first_letter_down(member.name)
        if member.description:
            result += f"        /**\n"
            result += f"{split_text('         * ', member.description)}\n"
            result += f"         */\n"
        if member.required:
            defaultValue = ""
        else:
            defaultValue = "? = null"
        result += "        "
        if member.type == "string":
            if member.enum:
                result += f"val {validName}: {first_letter_up(member.name)}"
            else:
                result += f"val {validName}: String"
        elif member.type == "number":
            result += f"val {validName}: Double"
        elif member.type == "integer":
            result += f"val {validName}: Int"
        elif member.type == "boolean":
            result += f"val {validName}: Boolean"
        else:
            raise Exception(f"Not handled yet: {member.type}")
        result += f"{defaultValue},\n"

    if itf:
        result += f") : {itf} " + "{\n"
    else:
        result += ") {\n"

    isFirstEnum = True
    for enum in schema.enums:
        result += "\n"
        result += f"    enum class {enum.name}(val rawValue: String) " + "{\n"
        enum.values.sort()
        for value in enum.values:
            if value.name.startswith("Web"):
                continue
            if value.description:
                if not isFirstEnum:
                    result += "\n"
                result += f"        /**\n"
                result += f"{split_text('         * ', value.description)}\n"
                result += f"         */\n"
            validIdentifier = re.sub('[^a-zA-Z0-9_]', '', value.name)
            result += f"        {validIdentifier}(\"{value.name}\"),\n"
            isFirstEnum = False
        result += "    }\n"

    if is_screen:
        result += "\n"
        result += "    override fun getName() = screenName.rawValue\n"
    elif schema.event_name:
        result += "\n"
        result += f'    override fun getName() = "{schema.event_name}"\n'

    result += "\n"
    if not schema.members:
        result += "    override fun getProperties(): Map<String, Any>? = null\n"
    else:
        if itf:
            result += "    override fun getProperties(): Map<String, Any>? {\n"
        else:
            result += "    fun getProperties(): Map<String, Any>? {\n"

        result += "        return mutableMapOf<String, Any>().apply {\n"
        for member in schema.members:
            validName = first_letter_down(member.name)

            if member.name == "screenName" and is_screen:
                continue
            if member.required:
                if member.enum:
                    result += f'            put("{validName}", {member.name}.rawValue)\n'
                else:
                    result += f'            put("{validName}", {member.name})\n'
            else:
                if member.enum:
                    result += '            %s?.let { put("%s", it.rawValue) }\n' % (
                        validName,
                        member.name,
                    )
                else:
                    result += '            %s?.let { put("%s", it) }\n' % (
                        validName,
                        member.name,
                    )
        result += "        }.takeIf { it.isNotEmpty() }\n"
        result += "    }\n"

    result += "}\n"
    return result
