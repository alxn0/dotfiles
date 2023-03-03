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

sudo apt install vim -y
sudo apt install tmux -y
sudo apt install tree -y
sudo apt install ripgrep -y
sudo apt install fzf -y

# Install from tldr
echo -e "\n-- Installing from pip"
sudo apt install python3-pip -y
pip install tldr 

# Install gh
echo -e "\n-- Installing gh"
$DOTFILES/install/install-gh

# Install R
echo -e "\n-- Installing R"
$DOTFILES/install/install-R

# Install postgresql
echo -e "\n-- Installing PostgreSQL"
$DOTFILES/install/install-postgre

# Install docker
echo -e "\n-- Installing Docker"
$DOTFILES/install/install-docker

# Source all setup
echo -e "\n-- App configurations"

echo -e "\n-bash"; $DOTFILES/bash/setup
echo -e "\n-vim"; $DOTFILES/vim/setup
echo -e "\n-tmux"; $DOTFILES/tmux/setup
echo -e "\n-python"; $DOTFILES/python/setup

# Final message
echo -e "\n-- Done executing setup scripts"
