#!/bin/bash
clear

GREEN='\033[0;32m'
NC='\033[0m' 
# Will be appended as soon user enters Location and User
sshserveradress=""

# Install openssh-client on Ansible Controller
sudo apt update
sudo apt install openssh-client
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

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
    read -r -p "Set Key name: " keyname
    sshserveradress=$username"@"$ipadress
}

function installansibleonnode() {
    ssh sshserveradress 'sudo su && apt install ansible ansible-core ansible-galaxy -y'
    echo $(apt list --installed | grep ansible) is Installed
    echo $(apt list --installed | grep ansible-core) is Installed
    echo $(apt list --installed | grep ansible-galaxy) is Installed
}

# Function for SSH keys creation
function sshkeyscreation() {
    ssh-keygen -t rsa -b 4096 -f ~/.ssh/$keyname
}

# Function for SSH keys Copying
function copysshkeys(){
    ssh-copy-id -i ~/.ssh/$keyname "$sshserveradress"
}

# Script Entry Point
printer "This Script will Automate Ansible Installation and SSH Key management"
readserverinfos
clear
printer "SSH Key Management"
sshkeyscreation
copysshkeys
sleep 2
clear
printer "Installing Ansible on Node"
sleep 2
installansibleonnode
clear

