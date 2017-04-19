#!/bin/bash

WORK_DIR="${1:-$(pwd)}/working"
VM_NAME="${2:-VM1}"

FILE_NAME="work_sda.vdi"
FILE_PATH="${WORK_DIR}/${FILE_NAME}"

VBoxManage createhd --filename ${FILE_PATH} --size 8000
VBoxManage storageattach ${VM_NAME} --storagectl "SATA" --port 2 --device 0 --type hdd --medium ${FILE_PATH}
