#! /bin/bash

sh sshautomation.sh

ECHO "Starting Installation Process (playbook.yml)"
ansible-playbook -i ./compose/hosts.yml ../compose/playbook.yml --check -K

ECHO "Starting Containers (services.yml)"
ansible-playbook -i ./compose/hosts.yml ../compose/services.yml --check -K