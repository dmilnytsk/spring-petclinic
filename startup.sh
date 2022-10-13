#!/bin/bash

###################


# Install Ansible #

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update
    sudo apt-get install software-properties-common python3-pip git -y
    sudo pip3 install ansible==2.9.27
else
    echo "Ansible already installed"
fi

# Run Ansible #

mkdir /tmp/ansible
cd /tmp/ansible
git clone -b ansible https://github.com/dmilnytsk/spring-petclinic.git
cd spring-petclinic
AWS_DB_URL=${aws_db_url}
ansible-playbook components.yaml --extra-vars "DB_URL=$AWS_DB_URL"


