#!/bin/bash
sudo apt update && upgrade -y
#Install applications
sudo apt install gimp git gparted neofetch npm obs-studio timeshift psensor tlp powertop \
libgconf-2-4 libappindicator1 libc++1 -y

#Install vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt install code -y

#Install Edge Chromium
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg
sudo apt install microsoft-edge-dev -y

#Install Discord
wget -O discord.deb "https://discord.com/api/download?platform=linux&format=deb"
sudo dpkg -i ./discord.deb
sudo rm ./discord.deb

#autoremove
sudo apt autoremove -y

#Done configuration
echo "Post install script done"
exit
