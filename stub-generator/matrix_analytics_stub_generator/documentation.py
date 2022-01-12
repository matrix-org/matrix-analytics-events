from jinja2 import Environment, PackageLoader, select_autoescape
from typing import Iterator
from .schema import Schema


def generate_documentation(schemas: Iterator[Schema], output_path: str) -> None:
    env = Environment(
        loader=PackageLoader("matrix_analytics_stub_generator"),
        autoescape=select_autoescape(),
    )
    template = env.get_template("index.html")

    with open(output_path, "w") as output_file:
        output_file.write(template.render(schemas=schemas))
