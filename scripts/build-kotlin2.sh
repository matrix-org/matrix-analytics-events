#!/bin/bash

rm types/kotlin2/*

set -e

for json in schemas/*.json
do
  json_basename=$(basename $json);
  kotlin_path=types/kotlin2/${json_basename%.*}.kt
  python3 scripts/mobile_generator.py -l kotlin -s $json > $kotlin_path
done;
