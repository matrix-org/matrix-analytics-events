import sys
from matrix_analytics_stub_generator.documentation import generate_documentation    

if __name__ == "__main__":
    if len(sys.argv) <= 2:
        print("Usage: python -m matrix_analytics_stub_generator [schemas_dir] [output_path]", file=sys.stderr)
        sys.exit(1)
    generate_documentation(sys.argv[1], sys.argv[2])
