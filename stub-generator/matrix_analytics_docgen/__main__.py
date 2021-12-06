from dataclasses import dataclass
import glob
from jinja2 import Environment, PackageLoader, select_autoescape
import json
import os.path
import sys
from typing import Optional, Union, Any


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

    properties = [load_property(k, v) for k, v in json["properties"].items() if k != "eventName"]
    return Event(name=json["properties"]["eventName"]["enum"][0], properties=list(properties))


def render_schema(events: list[Event]) -> str:
    env = Environment(loader=PackageLoader("matrix_analytics_docgen"), autoescape=select_autoescape())
    template = env.get_template("index.html")
    return template.render(events=events)


def main(schemas_dir: str, output_path: str):
    events = []

    for json_filename in glob.glob("*.json", root_dir=schemas_dir):
        with open(os.path.join(schemas_dir, json_filename), "r") as f:
            events.append(load_schema(json.load(f)))

    with open(output_path, "w") as output_file:
        output_file.write(render_schema(events))


if __name__ == "__main__":
    if len(sys.argv) <= 2:
        print("Usage: doc_generator.py [schemas_dir] [output_path]", file=sys.stderr)
        sys.exit(1)
    main(sys.argv[1], sys.argv[2])
