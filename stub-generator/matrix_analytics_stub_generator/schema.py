from dataclasses import dataclass
from typing import List
from textwrap import wrap


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

def first_letter_down(s: str) -> str:
    """Ensure the first letter is not upper case."""
    return s[0].lower() + s[1:]

def split_text(prefix: str, text: str, limit: int = 80):
    """ensure comment is limited in length"""
    # Use str() to avoid this issue: AttributeError: 'set' object has no attribute 'expandtabs'
    return "\n".join(wrap(text=str(text), width=limit, initial_indent=prefix, subsequent_indent=prefix))

def is_mobile_screen_event(s) -> str:
    """Whether the supplied class name is for the MobileScreen event."""
    return s == "MobileScreen"


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
    event_name = data["properties"].get("eventName", {}).get("enum", [None])[0]
    required = data.get("required")
    for p in data["properties"]:
        if p == "eventName":
            continue
        if p == first_letter_up(p):
            # The field name would conflict with the enum name, this causes ambiguity in Swift
            enum = make_enum(p + "Enum", data["properties"][p])
        else:
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
