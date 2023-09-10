# Homeserver Automation with Ansible and Docker Documentation

# Requirements

## Ansible Node
- Static Ip Configuration (LAN)
- SMB Share (optional)
- Running Open SSH Service with configured public and private Key
- Ansible Installed

## Ansible Client
- SSH public Key transfered to Ansible Node
- Ansible Installed

# Flow Diagram
![Flow Diagram Ansible Playbook](./Documentation/Diagram.svg)

# How To
Coming Soon

## To do's
- [x] Enter server credentials
- [x] Ask for smb share
- [x] Skip cifs install
- [x] Skip mounting smb share
- [-] Create Docker Group and append User to the Group
- [-] Enter Samba Share Location (ip:/sharedFolder) when samba exists
- [ ] Enter Mount point (/mnt/media)
- [ ] Enter movies location (/mnt/media/Movies)
- [ ] Enter TV-shows location (/mnt/media/TV)
- [ ] Automatic path modification on ../compose/.env

## Future Requests

- [ ] Shell Script to install Ansible Client & Node
- [ ] Shell Script to create SSH Keys and automatic Transfer
