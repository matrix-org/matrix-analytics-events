from .schema import Schema, is_screen_event, first_letter_up


def compute_kotlin(schema: Schema) -> str:
    """Compute the output for Kotlin."""
    is_screen = is_screen_event(schema.klass)

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
    else:
        itf = "VectorAnalyticsEvent"

    result += (
        f"import im.vector.app.features.analytics.itf.{itf}\n\n"
        f"// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT\n"
        f"// https://github.com/matrix-org/matrix-analytics-events/\n\n"
        f"/**\n"
        f" * {schema.data.get('description')}\n"
        f" */\n"
        f"data class {schema.klass}(\n"
    )

    for member in schema.members:
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

    for enum in schema.enums:
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
    if is_screen:
        result += "    override fun getName() = screenName.name\n"
    else:
        result += f'    override fun getName() = "{schema.event_name}"\n'

    result += "\n"
    if not schema.members:
        result += "    override fun getProperties(): Map<String, Any>? = null\n"
    else:
        result += "    override fun getProperties(): Map<String, Any>? {\n"
        result += "        return mutableMapOf<String, Any>().apply {\n"
        for member in schema.members:
            if member.name == "screenName" and is_screen:
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
