#!/usr/bin/env bash

source ~/GitHub/wm/modules/colors.sh

# hyprland
if [ -e "$HOME/.config/hypr" ]; then
	echo_danger "Deleting Existing Hyperland Config"
	rm -rf "$HOME/.config/hypr"
	if [ $? -eq 0 ]; then
		echo_success "Deleted Hyperland Config"
	else
		echo_error "Failed to delete Hyperland Config"
	fi
	echo_info "Linking Hyperland Config"
	ln -s "$HOME/GitHub/wm/.config/hypr" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Hyperland Config"
	else
		echo_error "Failed to link Hyperland Config"
	fi
else
	echo_info "Linking Hyperland Config"
	ln -s "$HOME/GitHub/wm/.config/hypr" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Hyperland Config"
	else
		echo_error "Failed to link Hyperland Config"
	fi
fi

# waybar
if [ -e "$HOME/.config/waybar" ]; then
	echo_danger "Deleting Existing Waybar Config"
	rm -rf "$HOME/.config/waybar"
	if [ $? -eq 0 ]; then
		echo_success "Deleted Waybar Config"
	else
		echo_error "Failed to delete Waybar Config"
	fi
	echo_info "Linking Waybar Config"
	ln -s "$HOME/GitHub/wm/.config/waybar" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Waybar Config"
	else
		echo_error "Failed to link Waybar Config"
	fi
else
	echo_info "Linking Waybar Config"
	ln -s "$HOME/GitHub/wm/.config/waybar" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Waybar Config"
	else
		echo_error "Failed to link Waybar Config"
	fi
fi

# wofi
if [ -e "$HOME/.config/wofi" ]; then
	echo_danger "Deleting Existing Wofi Config"
	rm -rf "$HOME/.config/wofi"
	if [ $? -eq 0 ]; then
		echo_success "Deleted Wofi Config"
	else
		echo_error "Failed to delete Wofi Config"
	fi
	echo_info "Linking Wofi Config"
	ln -s "$HOME/GitHub/wm/.config/wofi" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Wofi Config"
	else
		echo_error "Failed to link Wofi Config"
	fi
else
	echo_info "Linking Wofi Config"
	ln -s "$HOME/GitHub/wm/.config/wofi" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Wofi Config"
	else
		echo_error "Failed to link Wofi Config"
	fi
fi

# wlogout
if [ -e "$HOME/.config/wlogout" ]; then
	echo_danger "Deleting Existing wlogout Config"
	rm -rf "$HOME/.config/wlogout"
	if [ $? -eq 0 ]; then
		echo_success "Deleted wlogout Config"
	else
		echo_error "Failed to delete wlogout Config"
	fi
	echo_info "Linking wlogout Config"
	ln -s "$HOME/GitHub/wm/.config/wlogout" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked wlogout Config"
	else
		echo_error "Failed to link wlogout Config"
	fi
else
	echo_info "Linking wlogout Config"
	ln -s "$HOME/GitHub/wm/.config/wlogout" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked wlogout Config"
	else
		echo_error "Failed to link wlogout Config"
	fi
fi
