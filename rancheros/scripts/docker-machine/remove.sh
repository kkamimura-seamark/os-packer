#!/bin/bash

VM_NAME="${1:-VM1}"

echo "${VN_NAME}"

docker-machine rm -f ${VM_NAME}
