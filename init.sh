#! /bin/bash

ECHO "Starting Installation Process (playbook.yml)"
ansible-playbook -i hosts.yml ./playbook.yml --check -K

ECHO "Starting Containers (services.yml)"
ansible-playbook -i hosts.yml ./services.yml --check -K