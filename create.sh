#!/bin/bash
ANSIBLE_DIR="../ansible"
ANSIBLE_INV="$ANSIBLE_DIR/hosts"

# Deploy Servers on Packet
cd terraform
terraform init -input=false 
terraform apply -input=false -auto-approve

# Setup Ansible Inventory
echo "[rook]" > $ANSIBLE_INV
terraform show --json | jq . | grep access_public_ipv4 | awk -F'"' '{print $4}' >> $ANSIBLE_INV
printf "\n[rook:vars]\nansible_python_interpreter=/usr/bin/python3\n" >> $ANSIBLE_INV

# Run Ansible
cd $ANSIBLE_DIR
ansible -i hosts all -m ping
