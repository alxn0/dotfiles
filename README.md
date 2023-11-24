# My Linux Workstation Dotfiles

This repository hosts my personal dotfiles and scripts for configuring a Linux development environment and workstation. 
It includes configuration files Bash, Tmux, Alacritty, Vim, and several custom scripts for terminal-based development.
Last tested on Ubuntu 23.10 Mantic.

## Contents

- `dev`: Main installation script for setting up a terminal-based development environment
- `workstation`: Main installation script for setting up a workstation additional tools
- `install/`: Installation scripts for GitHub CLI, Go, R and fonts
- `scripts/`: Bash scripts for various tasks
- Others: configurations and setup scripts for specific tools

## Installation

Clone the repo, and run `dev` and `workstation` in this order to install
and configure everithing.

``` bash
git clone https://github.com/alex-naud/dotfiles
cd dotfiles
./dev
./workstation
```

`dev` could also be used alone for installation in a WSL environment, although I have not tested it. 

## Caution

Please review the scripts and dotfiles before running the setup scripts to ensure they suit your preferences and do not interfere with your existing configurations.

## License

The content in this repository is distributed under the MIT License, unless otherwise stated (such as in font licenses).

## Note

A way to detect if in WSL environment
Not using it for the moment as I prefer
running desktop ubuntu than Windows+WSL
Keep a trace for potential futur use.
Taken from get.docker

``` Bash
is_wsl() {
	case "$(uname -r)" in
	*microsoft* ) true ;; # WSL 2
	*Microsoft* ) true ;; # WSL 1
	* ) false;;
	esac
}
```
