#!/bin/sh

[ ! $# = 1 ] && echo "Missing target!" && exit 1
to="$1"
[ ! -d "$(pwd)/$to" ] && mkdir "$(pwd)/$to"

rsync -rav "$HOME" "$to" --files-from="files.txt"
rsync -rav "$HOME/.zshrc" "$to"
rsync -rav "/etc/sddm.conf" "$to"
