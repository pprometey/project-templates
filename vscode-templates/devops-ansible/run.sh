#!/bin/bash
set -e

#echo "Installing Ansible collections from requirements.yml..."
#ansible-galaxy collection install -r requirements.yml

echo "Running Ansible playbook..."
ansible-playbook playbooks/main.yml
