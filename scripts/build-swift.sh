#!/bin/bash

set -e

for json in schemas/*.json
do
  json_basename=$(basename $json);
  swift_path=types/swift/${json_basename%.*}.swift
  yarn run quicktype -s schema $json -o $swift_path --just-types
done;
