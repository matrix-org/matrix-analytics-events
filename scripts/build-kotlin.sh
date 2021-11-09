#!/bin/bash

set -e

for json in schemas/*.json
do
  json_basename=$(basename $json);
  kotlin_path=types/${json_basename%.*}.kt
  yarn run quicktype -s schema $json -o $kotlin_path --framework just-types
done;
