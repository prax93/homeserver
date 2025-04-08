# Homeserver Automation with Ansible and Docker-Compose 
## Table of Contents
- [What will be automated](#what-will-be-automated)
- [What Containers will be started](#what-containers-will-be-started)
    - [Download Clients](#download-clients)
    - [Media Automation](#media-automation)
    - [Network Containers](#network-containers)
    - [Monitoring](#monitoring)
- [Initial Steps](#initial-steps)
    - [Clone Repository](#clone-repository)
    - [Create and edit ./compose/.env file](#create-and-edit-compose-env-file)
- [Installation](#installation)
    - [Option 1: Complete Installation](#option-1-complete-installation)
        - [Requirements](#requirements)
        - [Complete Installation](#complete-installation)
    - [Option 2: Docker Only Installation](#option-2-docker-only-installation)
        - [Requirements](#requirements-1)
        - [Docker Only Installation](#docker-only-installation)

## What will be automated
- Installing Dependencies on Client / Server for now only apt is supported
- Creating and Exchaning SSH Keys
- Mounting SMB Share and create the necessary fstab entry
- Install Docker and give the necessary permissions
- Install Plex Media Server from snap repository
- Install Jellyfin from snap repository
- Copy compose files and Spin up Docker Containers

## What Containers will be started

### Download Clients
- transmission-client
- jdwonloader2

### Media Automation
- sonarr
- radarr
- overseerr
- prowlarr

### Network Containers
- adguardhome
- wireguard vpn (wgeasy)

### Monitoring
- dozzle


## Clone Repository
```bash
git clone https://github.com/prax93/homeserver.git
cd homeserver
```
# Installation

## Create and edit ./compose/.env file
```bash
nano ./compose/.env
```

```yaml
# Docker Configs
configs=~

# Media Location
movies=<Enter Movies Location here>
tvShows=<Enter TV Location here>
downloads=<Enter Downloads Location here>

# Network 
publicIp=<Enter Public IP here>
# Replace $ with $$
passwordHash=<wireguard password Hash here>
```

## Option 1: [Complete Instalation](#complete-installation)
- Creates SSH Keys
- Installs Dependencies with Ansible
- Starts all Containers

### Requirements
- Download / Movie / TV  Location predefined
- Openssh Server up and running on Homeserver
- Static Ip Configuration for Homeserver
- Openssh Client up and running on Client

### [Ansible Configuration](./playbooks/hosts.yml)
Append the Server Informations Accordingly
```yaml
[HomeServer]
192.168.0.100

[HomeServer:vars]
ansible_user=ubuntu
```

### Complete Installation
```sh
chmod +x ./sshautomation.sh
chmod +x ./init.sh

./sshautomations.sh && ./init.sh

```

## Option 2: [Docker Only Installation](#docker-only-installation)

- Starts all Containers

### Requirements
- Docker Compose V2 Installed 
- Download / Movie / TV  Location predefined
- .env file correctly Setup see [here](#create-and-edit-composeenv-file)

### Docker Only Installation

```sh
chmod ./dockeronly.sh 
./dockeronly.sh start | stop | update
```
