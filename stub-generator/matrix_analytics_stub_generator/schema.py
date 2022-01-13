from dataclasses import dataclass
from typing import List


@dataclass
class EnumValue:
    name: str
    description: str

    def __lt__(self, other):
        return self.name < other.name


@dataclass
class Enum:
    name: str
    values: list[EnumValue]


@dataclass
class Member:
    name: str
    type: str
    enum: Enum
    description: str
    required: bool

    def __lt__(self, other):
        return self.name < other.name


@dataclass
class Schema:
    klass: str
    data: dict
    members: List[Member]
    enums: List[Enum]
    event_name: str
    description: str


def first_letter_up(s: str) -> str:
    """capitalize() can also change the next letter, and I want to keep camel case."""
    return s[0].upper() + s[1:]


def is_screen_event(s) -> str:
    """Whether the supplied class name is for the Screen event."""
    return s == "Screen"


def make_enum(name: str, json_property: dict) -> Enum:
    """Makes an Enum object from a json property"""
    values = []

    enum_dict = json_property.get("enum")
    one_of_dict = json_property.get("oneOf")

    if enum_dict:
        for value in enum_dict:
            values.append(EnumValue(value, None))
    elif one_of_dict:
        for value in one_of_dict:
            value_name = value["const"]
            description = value.get("description")
            values.append(EnumValue(value_name, description))

    if len(values) > 0:
        return Enum(first_letter_up(name), values)


def parse_schema(data: dict, klass: str) -> Schema:
    """Parse the schema into members, enums and the event name."""
    members = []
    enums = []
    event_name = data["properties"]["eventName"]["enum"][0]
    required = data.get("required")
    for p in data["properties"]:
        if p == "eventName":
            continue
        enum = make_enum(p, data["properties"][p])
        if enum:
            enums.append(enum)
        members.append(
            Member(
                p,
                data["properties"][p].get("type"),
                enum,
                data["properties"][p].get("description"),
                p in required or data["properties"][p].get("required"),
            )
        )
    members.sort()
    return Schema(klass, data, members, enums, event_name, data.get("description"))
