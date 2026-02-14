#!/bin/sh

DESTINATION="$(pwd)/src"

[ ! -d "$DESTINATION" ] && mkdir "$dest"

function save {
	[ -z "$1" ] && echo "Source not set!" && exit 1
	src="$1"
	mkdir -p "$DESTINATION/$src"
	rsync -lrv "$src" "$DESTINATION/$src" --filter=':- .gitignore'
}

save ".config/btop"

# ### BTOP ###
# [ ! -d "$dest"/btop/ ] && mkdir "$dest"/btop/
# cp -r "$source"/btop/themes/ "$dest"/btop/
# cp -r "$source"/btop/btop.conf "$dest"/btop/
# 
# cp -r "$source"/dunst/ "$dest"/
# cp -r "$source"/fuzzel/ "$dest"/
# cp -r "$source"/hypr/ "$dest"/
# cp -r "$source"/imv/ "$dest"/
# cp -r "$source"/kitty/ "$dest"/
# 
# ### MICRO ###
# [ ! -d "$dest"/micro/ ] && mkdir "$dest"/micro/
# cp -r "$source"/micro/settings.json "$dest"/micro/
# cp -r "$source"/micro/bindings.json "$dest"/micro/
# cp -r "$source"/micro/colorschemes/ "$dest"/micro/
# 
# cp -r "$source"/swww "$dest"/
# cp -r "$source"/waybar "$dest"/
# cp -r "$source"/starship.toml "$dest"/
# 
# cp -r "$HOME/.zshrc" "$dest"/
# 
# [ ! -d "$dest"/VSCodium/User ] && mkdir -p "$dest"/VSCodium/User/
# cp "$source"/VSCodium/User/settings.json "$dest"/VSCodium/User
