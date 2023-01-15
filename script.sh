#!/bin/bash

# Mise à jour des paquets
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

# Installation de logiciels de sécurité
sudo apt-get install -y fail2ban ufw

# Configuration de fail2ban
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sudo sed -i 's/bantime  = 600/bantime = 86400/' /etc/fail2ban/jail.local
sudo systemctl restart fail2ban

# Configuration de ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable

# Redémarrage du serveur
sudo reboot
