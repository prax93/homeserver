#!/bin/bash
clear
GREEN='\033[0;32m'
NC='\033[0m' 
sshserveradress=""
# Install openssh-client on Ansible Controller
#sudo apt install openssh-client

# Printer for messages
printer() {
    printf "\n$GREEN****************************************************************************\n"
    printf "\n$1\n"
    printf "\n****************************************************************************$NC\n\n"
}

# Function to read Server information
function readserverinfos() {
    read -r -p "What is your Servers IP: " ipadress
    read -r -p "What is your username on the Server: " username
    sshserveradress=$username"@"$ipadress
}

# Function for SSH keys creation
function sshkeyscreation() {
    ssh-keygen -t rsa -b 4096 -f ~/.ssh/homeserver
}

# Function for SSH keys Copying
function copysshkeys(){
    ssh-copy-id -i ~/.ssh/homeserver "$sshserveradress"
}



# Script Entry Point
printer "This Script will Create and Copy separate SSH Keys only for your homeserver"
readserverinfos
sshkeyscreation
copysshkeys
clear
