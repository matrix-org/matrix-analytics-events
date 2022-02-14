#!/bin/bash

rm types/typescript/*

set -e
shopt -s extglob

pushd schemas
for f in !(Mobile*).json; do
  ts_path=../types/typescript/${f%.*}.d.ts
  json2ts $f -o $ts_path
done;
popd
