#! /bin/bash

sh sshautomation.sh
RED='\033[0;31m'
NC='\033[0m'


printf "Starting Installation Process (playbook.yml)\n\n"
ansible-playbook -i ./compose/hosts.yml ../compose/playbook.yml --check -K

printf "$RED ATTENTION ! $NC Check the Media Location, by default the ansible playbook mounts them under /mnt/nfs. If you dont have a samba share please change the values from /mnt/nfs to the respective directory\n\n"
sleep 10
nano ./compose/.env
sleep 1

printf  "Starting Containers (services.yml)"
ansible-playbook -i ./compose/hosts.yml ../compose/services.yml --check -K