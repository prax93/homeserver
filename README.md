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
<<<<<<< HEAD
- [x] If smb share not existent: Skip cifs install
- [x] If smb share not existent: Skip mounting smb share
- [x] Create Docker Group and append User to the Group
- [x] Enter Samba Share Location (ip:/sharedFolder) when samba exists
=======
- [x] Skip cifs install
- [x] Skip mounting smb share
- [x] Create Docker Group and append User to the Group
- [x] Enter Samba Share Location (ip:/sharedFolder) when samba exists
- [ ] Enter Mount point (/mnt/media)
- [ ] Enter movies location (/mnt/media/Movies)
- [ ] Enter TV-shows location (/mnt/media/TV)
- [ ] Automatic path modification on ../compose/.env
>>>>>>> 088376a (Commit for checkout)

## Future Requests

- [x] Shell Script to install Ansible Client & Node
- [x] Shell Script to create SSH Keys and automatic Transfer
