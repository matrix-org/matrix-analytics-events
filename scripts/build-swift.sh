#!/bin/bash

rm types/swift/*

set -e

for json in schemas/*.json
do
  json_basename=$(basename $json);
  swift_path=types/swift/${json_basename%.*}.swift
  yarn run quicktype -s schema $json -o $swift_path --no-initializers --acronym-style original --type-prefix AnalyticsEvent --access-level public
done;
