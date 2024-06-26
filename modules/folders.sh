#!/usr/bin/env bash

source ~/GitHub/wm/modules/colors.sh
source ~/GitHub/wm/modules/cmd_check.sh

# dunst
if [ -e "$HOME/.config/dunst" ]; then
	echo_danger "Deleting Existing dunst Config"
	rm -rf "$HOME/.config/dunst"
	delete_folder_check "dunst"

	echo_info "Linking dunst Config"
	ln -s "$HOME/GitHub/wm/.config/dunst" "$HOME/.config/"
	link_folder_check "dunst"
else
	echo_info "Linking dunst Config"
	ln -s "$HOME/GitHub/wm/.config/dunst" "$HOME/.config/"
	link_folder_check "dunst"
fi
