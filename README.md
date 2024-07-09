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

### Coming Soon Containers
- [ ] Prometheus
- [ ] APM Tool
- [ ] Grafana
- [ ] Postgres or Mysql
- [ ] Usenet Client
- [ ] Ntfy

# Installation
## Requirements
- Static Ip Configuration (LAN)
- SMB Share (recommended)

## Clone Repository

```bash
git clone https://github.com/prax93/homeserver.git
```

## Navigate to playbook Folder 

```bash
cd homeserver/playbook
```

## Edit hosts.yml file in ./playbook
```yaml
[HomeServer]
192.168.0.100 #Replace with your Servers IP

[HomeServer:vars]
ansible_user=ubuntu #Replace with your Servers Username
```

## Give Running Permissions for init.sh
```bash
cd ..
sudo chmod +x init.sh
```

## Run Init Script
```bash
sh ./init.sh
```


# To do's
- [x] Enter server credentials
- [x] Ask for smb share
- [x] If smb share not existent: Skip cifs install
- [x] If smb share not existent: Skip mounting smb share
- [x] Create Docker Group and append User to the Group
- [x] Enter Samba Share Location (ip:/sharedFolder) when samba exists
- [x] Variable Automation
- [ ] Testing
- [x] Documentation
- [ ] Finalize Playbooks

