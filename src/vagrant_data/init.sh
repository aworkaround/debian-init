#! /bin/bash

# Update the repositories
apt update
apt upgrade -y

# Install basic programs
apt install -y vim

# Make it secure
apt install -y ufw
ufw allow ssh
ufw --force enable && sudo ufw --force reload