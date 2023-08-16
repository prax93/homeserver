#! /bin/bash

ECHO "Starting Installation Process (playbook.yml)"
ansible-playbook -i ./hosts ./playbook.yml -K

ECHO "Starting Containers (services.yml)"
ansible-playbook -i ./hosts ./services.yml -K