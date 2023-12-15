#!/bin/bash

  # Update package list again
  sudo apt-get update

  # Download and install the Public Signing Key
  wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elastic-keyring.gpg

  # Install apt-transport-https package if not already installed
  sudo apt-get install -y apt-transport-https

  # Save the repository definition to /etc/apt/sources.list.d/elastic-8.x.list
  echo "deb [signed-by=/usr/share/keyrings/elastic-keyring.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-8.x.list > /dev/null

  # Update package list again
  sudo apt-get update

  # Install logstash
  sudo apt install logstash -y

  # Reload daemon
  sudo systemctl daemon-reload

  # Start logstash service
  sudo systemctl start logstash
