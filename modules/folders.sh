#!/usr/bin/env bash

source ~/GitHub/wm/modules/colors.sh

# dunst
if [ -e "$HOME/.config/dunst" ]; then
	echo_danger "Deleting Existing dunst Config"
	rm -rf "$HOME/.config/dunst"
	if [ $? -eq 0 ]; then
		echo_success "Deleted dunst Config"
	else
		echo_error "Failed to delete dunst Config"
	fi
	echo_info "Linking dunst Config"
	ln -s "$HOME/GitHub/wm/.config/dunst" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked dunst Config"
	else
		echo_error "Failed to link dunst Config"
	fi
else
	echo_info "Linking dunst Config"
	ln -s "$HOME/GitHub/wm/.config/dunst" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked dunst Config"
	else
		echo_error "Failed to link dunst Config"
	fi
fi
