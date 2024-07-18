# Linux terminal environments for dev and data analysis

This repository hosts my personal dotfiles and scripts for configuring a Linux development environment.
It includes configuration files Bash, Tmux, Vim, and several custom scripts for terminal-based development.
Last tested on Ubuntu 24.04 "something" numbat.

## Contents

- `setup`: Main installation script for setting up a terminal-based development environment
- `install/`: Installation scripts for GitHub CLI, Go, R and fonts
- `scripts/`: Bash scripts for various tasks
- other folder: configurations and setup scripts for specific tools

## Installation

Clone the repo, and run setup.

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
