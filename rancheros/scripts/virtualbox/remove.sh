#!/bin/bash

VM_NAME="${1:-VM2}"

sudo VBoxManage unregistervm ${VM_NAME} --delete
echo "removed status ${VN_NAME} $?"
