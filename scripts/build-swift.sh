#!/bin/bash

rm types/swift/*

set -e

for json in schemas/*.json
do
  json_basename=$(basename $json);
  swift_path=types/swift/${json_basename%.*}.swift
  python3 scripts/mobile_generator.py -l swift -s $json > $swift_path
done;
