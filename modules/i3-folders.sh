#!/usr/bin/env bash

source ~/GitHub/wm/modules/colors.sh
source ~/GitHub/wm/modules/cmd_check.sh

# i3wm
if [ -e "$HOME/.config/i3" ]; then
	echo_danger "Deleting Existing i3wm Config"
	delete_folder_check "i3"

	echo_info "Linking i3wm Config"
	ln -s "$HOME/GitHub/wm/.config/i3" "$HOME/.config/"
	link_folder_check "i3"
else
	echo_info "Linking i3wm Config"
	ln -s "$HOME/GitHub/wm/.config/i3" "$HOME/.config/"
	link_folder_check "i3"
fi

# polybar
if [ -e "$HOME/.config/polybar" ]; then
	echo_danger "Deleting Existing Polybar Config"
	delete_folder_check "polybar"

	echo_info "Linking Polybar Config"
	ln -s "$HOME/GitHub/wm/.config/polybar" "$HOME/.config/"
	link_folder_check "polybar"
else
	echo_info "Linking Polybar Config"
	ln -s "$HOME/GitHub/wm/.config/polybar" "$HOME/.config/"
	link_folder_check "polybar"
fi

# nitrogen
if [ -e "$HOME/.config/nitrogen/" ]; then
	echo_danger "Deleting Existing Nitrogen Config"
	rm -rf "$HOME/.config/nitrogen/"
	link_folder_check "nitrogen"

	echo_info "Linking Nitrogen Config"
	ln -s "$HOME/GitHub/wm/.config/nitrogen/" "$HOME/.config/"
	link_folder_check "nitrogen"
else
	echo_info "Linking Nitrogen Config"
	ln -s "$HOME/GitHub/wm/.config/nitrogen/" "$HOME/.config/"
	link_folder_check "nitrogen"
fi

# 90-touchpad.conf
echo_info "Copying 90-touchpad.conf"
sudo cp "$HOME/GitHub/wm/90-touchpad.conf" "/etc/X11/xorg.conf.d/"
copy_file_check "90-touchpad.conf"
