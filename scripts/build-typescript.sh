#!/bin/bash

rm -f types/typescript/*

set -e
shopt -s extglob

pushd schemas
for f in !(Mobile*).json; do
  ts_path=../types/typescript/${f%.*}.d.ts
  json2ts "$f" -o "$ts_path"
  # sed compatibility with both GNU & BSD
  sed -i.bak '/| "Mobile/d' "$ts_path"
  rm "$ts_path.bak"
done;
popd
