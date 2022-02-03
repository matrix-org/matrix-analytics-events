#!/bin/bash

rm types/typescript/*

set -e

pushd schemas
for f in *.json; do
  ts_path=../types/typescript/${f%.*}.d.ts
  json2ts $f -o $ts_path
done;
popd
