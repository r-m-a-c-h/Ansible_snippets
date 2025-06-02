# Ansible_snippets
Collection of useful snippets for day to day usage in Ansible

### Install Ansible - Ubuntu 
> sudo apt update && sudo apt upgrade -y

> sudo apt install software-properties-common

> sudo add-apt-repository --yes --update ppa:ansible/ansible

> sudo apt install ansible -y

> ansible --version

### Install sshpass
> sudo apt install sshpass

### Generate ssh key

> ssh-keygen -t rsa -b 4096 -f ~/.ssh/ansible_id_rsa

> eval "$(ssh-agent -s)"

> ssh-add ~/.ssh/ansible_id_rsa

### Add known hosts
> ssh-keyscan -H 192.168.31.253 >> ~/.ssh/known_hosts

### Create vault 
> ansible-vault create --vault-id linux@prompt linux_secrets.yml

> ansible-vault create --vault-id mac@prompt mac_secrets.yml

### Distribute SSH Key to Agents
> ansible-playbook -i inventory.ini distribute_ssh_key.yml --extra-vars "agents=mac_agents"

> ansible-playbook -i inventory.ini distribute_ssh_key.yml --extra-vars "agents=linux_agents"
