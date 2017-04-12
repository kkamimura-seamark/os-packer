#!/bin/bash

VM_NAME="${1:-VM2}"

VBoxManage unregistervm ${VM_NAME} --delete