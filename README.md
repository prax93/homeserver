# Homeserver Automation with Ansible and Docker-Compose 

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

# Initial Steps
## Clone Repository

```bash
git clone https://github.com/prax93/homeserver.git
cd homeserver

```

### Create and edit ./compose/.env file

```bash
nano ./compose/.env
```

```bash
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


# Installation
## Option 1: [Complete Instalation](#complete-installation)

    - Creates SSH Keys
    - Installs Dependencies with Ansible
    - Starts all Containers

## Option [Docker Only Installation](#complete-installation)

    - Starts all Containers


### Complete Installation
#### Requirements
- Existing SMB Share 
- Download / Movie / TV  Location predefined on Samba Share
- Openssh Server up and running on Homeserver
- Static Ip Configuration for Homeserver
- Openssh Client up and running on Client

```sh
chmod ./init.sh
```


### Docker Only Installation
#### Requirements
- Docker Compose V2 Installed 
- Download / Movie / TV  Location predefined
- .env file correctly Setup see [here](#create-and-edit-composeenv-file)

```sh
chmod ./dockeronly.sh
./dockeronly.sh
```
