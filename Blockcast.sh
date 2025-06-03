#!/bin/bash

# Exit on any error
set -e

# Update and install required styling and core tools
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release git jq toilet lolcat pv

# Clear screen and show banner
clear
toilet -f big --gay "Created By" | lolcat
toilet -f big --gay "0xTuraj" | lolcat
sleep 1

echo "" | pv -qL 10
echo ">>> Starting Blockcast Node Installation..." | lolcat
sleep 1

# System upgrade
echo "[+] Updating system packages..." | lolcat
sudo apt update && sudo apt upgrade -y

# Docker setup dependencies
echo "[+] Installing Docker prerequisites..." | lolcat
sudo apt install -y gnupg2 software-properties-common

# Setup Docker repo (non-interactive)
echo "[+] Setting up Docker GPG key and repository..." | lolcat
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  gpg --dearmor | sudo tee /etc/apt/keyrings/docker.gpg > /dev/null

echo "[+] Adding Docker repository..." | lolcat
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker
echo "[+] Installing Docker and Docker Compose plugin..." | lolcat
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Start Docker
echo "[+] Enabling and starting Docker service..." | lolcat
sudo systemctl enable docker
sudo systemctl start docker

# Clone and run Blockcast
echo "[+] Cloning Blockcast Docker repo..." | lolcat
git clone https://github.com/Blockcast/beacon-docker-compose.git
cd beacon-docker-compose

echo "[+] Starting containers with Docker Compose..." | lolcat
docker compose up -d

# Initialize node
echo "[+] Initializing Blockcast node..." | lolcat
docker compose exec blockcastd blockcastd init

# Get geolocation
echo "[+] Your node's location info:" | lolcat
curl -s https://ipinfo.io | jq '.city, .region, .country, .loc'

# Final message
echo ""
echo "🎉 Blockcast Node Setup Complete!" | lolcat
sleep 1

echo "" | pv -qL 10
echo "🌐 Please follow and support me on socials:" | lolcat
echo "🔗 https://github.com/0xTuraj" | lolcat
echo "🔗 https://x.com/0xTuraj" | lolcat
