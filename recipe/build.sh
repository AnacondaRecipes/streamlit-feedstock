#!/bin/bash

set -ex

protoc --proto_path=proto --python_out=lib proto/streamlit/proto/*.proto

$PYTHON -m pip install ./lib -vv --no-deps --no-build-isolation