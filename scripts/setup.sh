#!/bin/bash

set -e

yarn install
pushd stub-generator
poetry install
popd
