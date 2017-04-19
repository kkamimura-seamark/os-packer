#!/bin/bash

VERSION="${1:-latest}"
OUTPUT_DIR="${2:-$(pwd)}/output"
VM_NAME="${3:-VM2}"

mkdir -p ${OUTPUT_DIR}
OUTPUT_FILE="${OUTPUT_DIR}/rancheros_${VERSION}.box"

sudo vagrant package --base ${VM_NAME} --output ${OUTPUT_FILE}
