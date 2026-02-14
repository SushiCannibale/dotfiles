#!/bin/sh

# AUR package manager
echo "Installing aur package manager 'paru'"
git clone git@github.com:Morganamilo/paru.git
pushd paru
make
popd
rm -r paru
echo "paru installed $(which paru)"

sudo pacman -S brightnessctl # Grightness controller
# sudo pacman -S playerctl # Sound controller
sudo pacman -S gammastep # Blue light filter
sudo pacman -S zsh # Shell
sudo pacman -S waybar # Status bar
sudo pacman -S starship # Prettier terminal
sudo pacman -S fuzzel # Dmenu

### Editors ###
sudo pacman -S codium # VSCode metrics-free
sudo pacman -S micro

### Quality of life ###
sudo pacman -S tldr # Command decription with examples
sudo pacman -S bat  # Better `cat`
sudo pacman -S csvlens # CSV pretty-printer
sudo pacman -S fzf # Fuzzy finder
sudo pacman -S zoxide # Better `cd`
sudo pacman -S eza # Prettier file navigation
sudo pacman -S zsh-autosuggestions zsh-syntax-highlighting # Zsh plugins

echo "Reboot to finish installation."