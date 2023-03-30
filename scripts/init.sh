#!/usr/bin/env bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)

pip install --upgrade pip
python -m pip install -r "${SCRIPT_DIR}/../requirements.txt"
ansible-galaxy collection install -r "${SCRIPT_DIR}/../requirements.yml"
