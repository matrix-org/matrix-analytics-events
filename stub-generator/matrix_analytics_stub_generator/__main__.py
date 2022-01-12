import argparse
import json
import os
from .documentation import generate_documentation
from .kotlin import compute_kotlin
from .swift import compute_swift
from .schema import parse_schema


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


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Create analytics stubs and documentation from JSON schema"
    )
    parser.add_argument(
        "schema_paths", nargs="+", help="The JSON schema files to process"
    )
    parser.add_argument(
        "-l",
        "--language",
        dest="output_language",
        choices=["kotlin", "swift", "html"],
        help="The language to generate.",
        required=True,
    )

    parser.add_argument(
        "-o",
        "--output-dir",
        dest="output_dir",
        help="The directory to output to.",
        required=True,
    )

    args = parser.parse_args()

    if args.output_language == "html":
        generate_documentation(
            args.schema_paths, os.path.join(args.output_dir, "index.html")
        )
    else:
        generate_stub(args.output_language, args.schema_paths, args.output_dir)
