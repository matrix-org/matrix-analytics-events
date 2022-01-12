from dataclasses import dataclass
import glob
from jinja2 import Environment, PackageLoader, select_autoescape
import json
import os.path
from typing import Iterator, Optional, Union, Any
from .schema import Schema


@dataclass
class EnumMember:
    name: str
    description: Optional[str]


PropertyType = Union[str, list[EnumMember]]


@dataclass
class Property:
    name: str
    description: Optional[str]
    type: PropertyType


@dataclass
class Event:
    name: str
    properties: list[Property]


def load_schema(json: str) -> Event:
    def load_property_type(d: dict) -> PropertyType:
        if "oneOf" in d:
            return [EnumMember(o["const"], o["description"]) for o in d["oneOf"]]
        elif "enum" in d:
            return [EnumMember(name=e, description=None) for e in d["enum"]]
        else:
            return d["type"]

    def load_property(name: str, d: dict[str, Any]) -> Property:
        return Property(name, d.get("description"), load_property_type(d))

    properties = [
        load_property(k, v) for k, v in json["properties"].items() if k != "eventName"
    ]
    return Event(
        name=json["properties"]["eventName"]["enum"][0], properties=list(properties)
    )


def render_schema(schemas: Iterator[Schema]) -> str:
    env = Environment(
        loader=PackageLoader("matrix_analytics_stub_generator"),
        autoescape=select_autoescape(),
    )
    template = env.get_template("index.html")
    return template.render(schemas=schemas)


def generate_documentation(schemas: Iterator[Schema], output_path: str) -> None:
    with open(output_path, "w") as output_file:
        output_file.write(render_schema(schemas))
