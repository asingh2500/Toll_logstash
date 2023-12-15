#!/bin/bash

# Stop logstash service
sudo systemctl stop logstash

# Uninstall logstash
sudo apt-get purge logstash -y

# Remove Configuration and Data Files
sudo rm -rf /etc/logstash
sudo rm -rf /var/lib/logstash

# Remove Logstash User and Group
sudo userdel logstash
sudo groupdel logstash

# Clean Up APT Repository
sudo rm /etc/apt/sources.list.d/elastic-8.x.list
  
# Reload daemon
sudo systemctl daemon-reload

# update your APT cache
sudo apt-get update
