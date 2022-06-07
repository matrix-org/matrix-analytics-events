import argparse
import json
import os
import glob
import shutil
from typing import Iterator
from .documentation import generate_documentation
from .kotlin import compute_kotlin
from .swift import compute_swift
from .schema import Schema, parse_schema


def load_schemas(json_schema_paths: Iterator[str]) -> Iterator[Schema]:
    for json_schema_path in json_schema_paths:
        with open(json_schema_path) as json_file:
            data = json.load(json_file)
            klass = os.path.basename(json_schema_path).removesuffix(".json")
            yield parse_schema(data, klass)


def generate_stub(
    output_language: str,
    json_schema_paths: Iterator[str],
    output_dir: str,
) -> None:
    if output_language == "html":
        generate_documentation(
            load_schemas(json_schema_paths), os.path.join(args.output_dir, "index.html")
        )
    else:
        for schema in load_schemas(json_schema_paths):
            if schema.klass.startswith("Web"):
                continue

            if output_language in "kotlin":
                ext = ".kt"
                output = compute_kotlin(schema)
            elif output_language == "swift":
                ext = ".swift"
                output = compute_swift(schema)
            else:
                raise Exception(
                    f"Support for language {output_language} has not been implemented."
                )

            output_path = os.path.join(output_dir, schema.klass + ext)
            with open(output_path, "w") as output_file:
                print(output_path)
                output_file.write(output)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Create analytics stubs and documentation from JSON schema"
    )
    parser.add_argument(
        "-i",
        "--input",
        dest="schema_path",
        help="The directory containing the JSON schema files to process",
        required=True,
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

    # delete and re-create the output directory to ensure it is empty and we don't keep old type stubs
    shutil.rmtree(args.output_dir, ignore_errors=True)
    os.mkdir(args.output_dir)

    paths = [os.path.join(args.schema_path, path) for path in glob.iglob("*.json", root_dir=args.schema_path)]
    generate_stub(args.output_language, paths, args.output_dir)
