# Dotfiles 
This repository hosts my dotfiles and other configurations for terminal-based workflow.

Last tested on Ubuntu 25.04.

## Installation
Clone the repo, and run setup.

## Note
A way to detect if in WSL environment.

Not using it for the moment as I prefer
running desktop ubuntu than Windows+WSL

Keep a trace for potential futur use.
Taken from `get.docker`

``` Bash
is_wsl() {
	case "$(uname -r)" in
	*microsoft* ) true ;; # WSL 2
	*Microsoft* ) true ;; # WSL 1
	* ) false;;
	esac
}
```
