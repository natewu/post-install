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
wget -O edge-dev.deb "https://doc-00-1k-docs.googleusercontent.com/docs/securesc/tu6g6a6ko4pclefb37nm3ujqfh5hvhqv/aag3ntsf6lld8k07hq2gf5msiqhf92l6/1651951950000/18398345322558664384/18398345322558664384/1lpBeOFslJaksxM5bkvc40S13qKee2XkK?e=download&ax=ACxEAsYpitbmm1awXXn2-nAflbZV8TckX5z5pwA6_ydynPMGCz6mjhPk9UiL5-nbM37kbYp0hG0LrfjxmSDPsEvbWXeFs3phUIm98yPwl-6rCKHG6t3xWXqlfoy6BF8DUlHT8MZ2HjFyn96eStuSH1JJ8p4rnQnOpec7Rccq1igfVN8BWHz0Yp6c4kVdRZGT_F6ycUxHM1SdS9ZEdgq_P4U62YthzAkEoZDcj3up8wUwQGpQg3RcO9gUDiYEB6JSGpLOwbc73fRaDZTkAZG85itUA1bgNB2fCtLFHxTbxnDA3cJXsOTg-p9gYnNkZZ-Tj_6AT7pw8s9gVAc3w9DKg-Kaxvd8uRMo4w-WkDq1xr3bqR5CwQogqIG9mHG_rjC6AjSnLuGie3XBtFoTOban3bQwhE5D7gPuFIr1elKcmLqfK81BZI4WzbtHgDBT1_LCSv031sji2OyV5f3_j6wWun_2r-sze6xqd04zvOzFibeeNXWsA3mspCFci09IhZS-WWnBb-PhNSRtfM_puBWrWwDfcoFvOF2Hm2-spIwuBWJNnhf5zduOr8lREjlR2aKMI4EyR1JqSMJr7tTYWUDbr9ZJ1Wm-Gd0ga30v20oe2bKXcULUHLcwT0Jkx7_kZz-lvN5tU0ggmV32m6cObX3PedWXbUGILlreyjcPhHgB4ZOGPvxXcFCWMkEdOxMwAvs7odY-7a2dCZvZhWJfsw&authuser=0&nonce=iarflf33e03a2&user=18398345322558664384&hash=4mdas5949uejuesf453ogcej7qc32o8d"
sudo dpkg -i ./edge-dev.deb
sudo rm ./edge-dev.deb

#Hold Edge version
sudo apt-mark hold microsoft-edge-dev

#Install Discord
wget -O discord.deb "https://discord.com/api/download?platform=linux&format=deb"
sudo dpkg -i ./discord.deb
sudo rm ./discord.deb

#autoremove
sudo apt autoremove -y

#Configure Git
git config --global user.email "36091727+natewu@users.noreply.github.com"
git config --global user.name "natewu"

#Done configuration
echo "Post install script done"
exit
