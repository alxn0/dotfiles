#!/bin/bash

# Check if $DOTFILES is presence
if [ -z "$DOTFILES" ] # Check if $DOTFILES has legth equal to zero
then
  echo "Define DOTFILES as PWD"
  export DOTFILES=$PWD
else
  echo "DOTFILES is define as $DOTFILES"
fi

# Install from debian package manager
echo -e "\n-- Installing various app from debian package manager"
sudo apt update
sudo apt upgrade  -y

sudo apt install firefox -y
sudo apt install alacritty -y
sudo apt install vim -y
sudo apt install htop -y
sudo apt install tmux -y
sudo apt install tree -y
sudo apt install fzf -y
sudo apt install ripgreg -y
sudo apt install default-jre libreoffice-java-common -y # For libre office

# Install from flatpak
echo -e "\n-- Installing various app from flatpak"
flatpak install org.zotero.Zotero -y
flatpak install org.inkscape.Inkscape -y
flatpak install org.gimp.GIMP -y
flatpak install org.keepassxc.KeePassXC -y
flatpak install com.slack.Slack -y
flatpak install org.signal.Signal -y
flatpak install org.gnome.Solanum -y
flatpak install com.sindresorhus.Caprine -y
flatpak install org.videolan.VLC -y
flatpak install org.qbittorrent.qBittorrent -y
flatpak install com.brave.Browser -y
flatpak install org.kryogenix.Pick -y

# Install from pip
echo -e "\n-- Installing from pip"
sudo apt install python3-pip
pip install tldr 

# Install fonts
echo -e "\n-- Installing fonts"
$DOTFILES/install/install-fonts

# Install gh
echo -e "\n-- Installing gh"
$DOTFILES/install/install-gh

# Install R
echo -e "\n-- Installing R"
$DOTFILES/install/install-R

# Install postgresql
echo -e "\n-- Installing PostgreSQL"
$DOTFILES/install/install-postgre

# Source all setup
echo -e "\n-- App configurations"

echo -e "\n-alacritty"; $DOTFILES/alacritty/setup
echo -e "\n-bash"; $DOTFILES/bash/setup
echo -e "\n-vim"; $DOTFILES/vim/setup
echo -e "\n-tmux"; $DOTFILES/tmux/setup
echo -e "\n-python"; $DOTFILES/python/setup

# Final message
echo -e "\n-- Done executing setup scripts"
echo "Still need to manually install some application"
echo "exec ./install/install-web-releases to display releases in firefox"
