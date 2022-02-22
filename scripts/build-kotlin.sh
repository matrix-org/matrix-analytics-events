#!/bin/bash

rm types/kotlin/*

set -e
shopt -s extglob

for json in schemas/!(Web*).json
do
  json_basename=$(basename $json);
  kotlin_path=types/kotlin/${json_basename%.*}.kt
  yarn run quicktype -s schema $json -o $kotlin_path --framework just-types
done;
