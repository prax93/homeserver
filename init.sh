#! /bin/bash
./sshautomation.sh

RED='\033[0;31m'
NC='\033[0m'

printf "Starting Installation Process (playbook.yml)\n\n"
ansible-playbook -i playbooks/hosts.yml playbooks/playbook.yml --ask-become-pass 

printf  "Starting Containers (services.yml)"
ansible-playbook -i playbooks/hosts.yml playbooks/services.yml --ask-become-pass 
