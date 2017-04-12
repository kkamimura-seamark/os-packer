#!/bin/bash

VM_NAME="${2:-VM1}"
VERSION="${1:-latest}"

ISO_URL="https://releases.rancher.com/os/${VERSION}/rancheros.iso"

echo "${VERSION} ${VN_NAME} ${ISO_URL}"

docker-machine create -d virtualbox --virtualbox-boot2docker-url ${ISO_URL} ${VM_NAME}
