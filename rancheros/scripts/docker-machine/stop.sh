#!/bin/bash

VM_NAME="${1:-VM1}"

echo "Stopping ${VN_NAME} .... "

docker-machine stop ${VM_NAME}

echo "done"
