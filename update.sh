#!/bin/sh

config="$(realpath ~/.config)"
src="btop/ dunst/ fuzzel/ hypr/ imv/ kitty/ micro/ swww/ waybar/ starship.toml"

for arg in $src; do
	cp -r "$config/$arg" src/
done
