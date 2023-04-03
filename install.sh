#!/bin/bash

# Update the package index and upgrade packages.
sudo apt update
sudo apt upgrade -y

# Install required packages.
sudo apt install -y python3 wget git python3-pip

# Install Python packages.
pip install flask pytest-playwright

# Install Playwright.
python3 -m playwright install

# Download and install Go.
wget https://go.dev/dl/go1.20.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.20.2.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc

# Clone the WhatsApp-GPT project.
git clone https://github.com/danielgross/whatsapp-gpt.git
