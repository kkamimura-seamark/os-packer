#!/bin/bash

VM_NAME="${1:-VM1}"

echo "Starting ${VN_NAME} .... "

docker-machine start ${VM_NAME}

echo "done"
