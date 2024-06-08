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

# nitrogen
if [ -e "$HOME/.config/nitrogen/" ]; then
	echo_danger "Deleting Existing Nitrogen Config"
	rm -rf "$HOME/.config/nitrogen/"
	if [ $? -eq 0 ]; then
		echo_success "Deleted Nitrogen Config"
	else
		echo_erro "Failed to delete Nitrogen Config"
	fi
	echo_info "Linking Nitrogen Config"
	ln -s "$HOME/GitHub/wm/.config/nitrogen/" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Nitrogen Config"
	else
		echo_error "Failed to link Nitrogen Config"
	fi
else
	echo_info "Linking Nitrogen Config"
	ln -s "$HOME/GitHub/wm/.config/nitrogen/" "$HOME/.config/"
	if [ $? -eq 0 ]; then
		echo_success "Linked Nitrogen Config"
	else
		echo_error "Failed to link Nitrogen Config"
	fi
fi

# 90-touchpad.conf
echo_info "Copying 90-touchpad.conf"
sudo cp -rf "$HOME/GitHub/wm/90-touchpad.conf" "/etc/X11/xorg.conf.d/"
if [ $? -eq 0 ]; then
	echo_success "Copied 90-touchpad.conf"
else
	echo_error "Failed to copy 90-touchpad.conf"
fi
