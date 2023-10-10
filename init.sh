#! /bin/bash

./sshautomation.sh

RED='\033[0;31m'
NC='\033[0m'

printf "Starting Installation Process (playbook.yml)\n\n"
ansible-playbook -i playbooks/hosts.yml playbooks/playbook.yml -C

printf "$RED ATTENTION ! $NC Check the Media Location. Change the values to the respective directory\n\n"
sleep 10
nano playbooks/compose/.env
sleep 1

printf  "Starting Containers (services.yml)"
ansible-playbook -i playbooks/hosts.yml playbooks/services.yml -C