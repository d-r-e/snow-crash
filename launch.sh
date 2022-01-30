#!/bin/bash

set -e

machine=$(VBoxManage list vms | grep -i "snow" | cut -f1 -d" " | tr -d '"')
echo "Launching machine: $machine"
VBoxManage startvm $machine
