#!/bin/bash

rm types/typescript/*

set -e

json2ts schemas/ -o types/typescript/
