# From get.docker
# A way to detect if in wsl
# Not using it for the moment as I prefer
# Having plain ubuntu than windows+wsl
# But may be usefull in the future

``` Bash
is_wsl() {
	case "$(uname -r)" in
	*microsoft* ) true ;; # WSL 2
	*Microsoft* ) true ;; # WSL 1
	* ) false;;
	esac
}

# Only on linux workstation
if ! is_wsl; then
  echo "Setup alacritty"
  cd alacritty && ./setup
  cd .. 
fi
```
