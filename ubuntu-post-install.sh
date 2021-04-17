#!/bin/bash
sudo apt update && upgrade -y
#Install applications
sudo apt install gimp git gparted neofetch npm obs-studio timeshift psensor tlp powertop-y

#Install Discord
cd /home/natewu/downloads
wget -O discord.deb https://discord.com/api/download?platform=linux&format=deb
sudo dpkg -i discord.deb
cd ..

#Install vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt install code

#Install Edge Chromium
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg
sudo apt install microsoft-edge-dev

#Done configuration
echo "Post install script done"
