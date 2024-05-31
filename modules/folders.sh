#!/usr/bin/env bash

source ~/GitHub/wm/modules/colors.sh

# i3wm
if [ -e "$HOME/.config/i3" ]; then
	echo_danger "Deleting Existing i3wm Config"
	rm -rf "$HOME/.config/i3"
	if [ $? -eq 0 ]; then
		echo_success "Deleted i3wm Config"
	else
		echo_error "Failed to delete i3wm Config"
	fi
	echo_info "Linking i3wm Config"
	ln -s "$HOME/GitHub/wm/.config/i3" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked i3wm Config"
	else
		echo_error "Failed to link i3wm Config"
	fi
else
	echo_info "Linking i3wm Config"
	ln -s "$HOME/GitHub/wm/.config/i3" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked i3wm Config"
	else
		echo_error "Failed to link i3wm Config"
	fi
fi

# polybar
if [ -e "$HOME/.config/polybar" ]; then
	echo_danger "Deleting Existing Polybar Config"
	rm -rf "$HOME/.config/polybar"
	if [ $? -eq 0 ]; then
		echo_success "Deleted Polybar Config"
	else
		echo_error "Failed to delete Polybar Config"
	fi
	echo_info "Linking Polybar Config"
	ln -s "$HOME/GitHub/wm/.config/polybar" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Polybar Config"
	else
		echo_error "Failed to link Polybar Config"
	fi
else
	echo_info "Linking Polybar Config"
	ln -s "$HOME/GitHub/wm/.config/polybar" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Polybar Config"
	else
		echo_error "Failed to link Polybar Config"
	fi
fi

# rofi
if [ -e "$HOME/.config/polybar" ]; then
	echo_danger "Deleting Existing Rofi Config"
	rm -rf "$HOME/.config/rofi"
	if [ $? -eq 0 ]; then
		echo_success "Deleted Rofi Config"
	else
		echo_erro "Failed to delete Rofi Config"
	fi
	echo_info "Linking Rofi Config"
	ln -s "$HOME/GitHub/wm/.config/rofi" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Rofi Config"
	else
		echo_error "Failed to link Rofi Config"
	fi
else
	echo_info "Linking Rofi Config"
	ln -s "$HOME/GitHub/wm/.config/rofi" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Rofi Config"
	else
		echo_error "Failed to link Rofi Config"
	fi
fi

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
