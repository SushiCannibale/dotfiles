#!/bin/sh

source="$HOME/.config"
dest="test"

[ ! -d "$dest" ] && mkdir "$dest"

### BTOP ###
[ ! -d "$dest"/btop/ ] && mkdir "$dest"/btop/
cp -r "$source"/btop/themes/ "$dest"/btop/
cp -r "$source"/btop/btop.conf "$dest"/btop/

### DUNST ###
cp -r "$source"/dunst/ "$dest"/

### FUZZEL ###
cp -r "$source"/fuzzel/ "$dest"/

### HYPR ###
cp -r "$source"/hypr/ "$dest"/

### IMV ###
cp -r "$source"/imv/ "$dest"/

### KITTY ###
cp -r "$source"/kitty/ "$dest"/

### MICRO ###
[ ! -d "$dest"/micro/ ] && mkdir "$dest"/micro/
cp -r "$source"/micro/settings.json "$dest"/micro/
cp -r "$source"/micro/bindings.json "$dest"/micro/
cp -r "$source"/micro/colorschemes/ "$dest"/micro/

### SWWW ###
cp -r "$source"/swww "$dest"/

### WAYBAR ###
cp -r "$source"/waybar "$dest"/

### STARSHIP ###
cp -r "$source"/starship.toml "$dest"/