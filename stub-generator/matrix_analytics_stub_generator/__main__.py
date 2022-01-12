import argparse
import os
from matrix_analytics_stub_generator.documentation import generate_documentation
from matrix_analytics_stub_generator.mobile_generator import generate_stub

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
