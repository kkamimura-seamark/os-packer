#!/bin/bash

VM_NAME="${1:-VM2}"
WORK_DIR="${2:-$(pwd)}/working"

FILE_NAME="work_sda.vdi"
FILE_PATH="${WORK_DIR}/${FILE_NAME}"

sudo VBoxManage createvm --name ${VM_NAME} --ostype "Linux26_64" --register
sudo VBoxManage modifyvm ${VM_NAME} --memory 2048 --vram 8 --acpi on --cpus 2
sudo VBoxManage modifyvm ${VM_NAME} --nic1 nat --cableconnected1 on
sudo VBoxManage modifyvm ${VM_NAME} --audio none

sudo VBoxManage storagectl ${VM_NAME} --name "SATA controller" --add sata
sudo VBoxManage storageattach ${VM_NAME} --storagectl "SATA controller" --port 0 --device 0 --type hdd --medium ${FILE_PATH}
