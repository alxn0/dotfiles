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

sudo apt install r-base -y
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install vim -y
sudo apt install tmux -y
sudo apt install tree -y

# Install from pip
echo -e "\n-- Installing from pip"
pip install tldr 
pip install ipython 
pip install radian

# Install gh
echo -e "\n-- Installing gh"
$DOTFILES/install/install-gh

# Source all setup
echo -e "\n-- App configurations"

echo -e "\n-bash"; $DOTFILES/bash/setup
echo -e "\n-vim"; $DOTFILES/vim/setup
echo -e "\n-tmux"; $DOTFILES/tmux/setup

# Final message
echo -e "\n-- Done executing setup scripts"
