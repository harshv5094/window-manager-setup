#!/usr/bin/env bash

source ~/.ghq/github.com/harshv5094/window-manager-setup/modules/colors.sh
source ~/.ghq/github.com/harshv5094/window-manager-setup/modules/cmd_check.sh

# i3wm
if [ -e "$HOME/.config/i3" ]; then
  echo_danger "Deleting Existing i3wm Config"
  delete_folder_check "i3"

  echo_info "Linking i3wm Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/i3" "$HOME/.config/"
  link_folder_check "i3"
else
  echo_info "Linking i3wm Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/i3" "$HOME/.config/"
  link_folder_check "i3"
fi

# polybar
if [ -e "$HOME/.config/polybar" ]; then
  echo_danger "Deleting Existing Polybar Config"
  delete_folder_check "polybar"

  echo_info "Linking Polybar Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/polybar" "$HOME/.config/"
  link_folder_check "polybar"
else
  echo_info "Linking Polybar Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/polybar" "$HOME/.config/"
  link_folder_check "polybar"
fi

# nitrogen
if [ -e "$HOME/.config/nitrogen/" ]; then
  echo_danger "Deleting Existing Nitrogen Config"
  rm -rf "$HOME/.config/nitrogen/"
  link_folder_check "nitrogen"

  echo_info "Linking Nitrogen Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/nitrogen/" "$HOME/.config/"
  link_folder_check "nitrogen"
else
  echo_info "Linking Nitrogen Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/nitrogen/" "$HOME/.config/"
  link_folder_check "nitrogen"
fi

# rofi
if [ -e "$HOME/.config/rofi" ]; then
  echo_danger "Deleting Existing Rofi Config"
  rm -rf "$HOME/.config/rofi"
  delete_folder_check "rofi"

  echo_info "Linking Rofi Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/rofi" "$HOME/.config/"
  link_folder_check "rofi"
else
  echo_info "Linking Rofi Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/rofi" "$HOME/.config/"
  delete_folder_check "rofi"
fi

# 90-touchpad.conf
echo_info "Copying 90-touchpad.conf"
sudo cp "$HOME/.ghq/github.com/harshv5094/window-manager-setup/90-touchpad.conf" "/etc/X11/xorg.conf.d/"
copy_file_check "90-touchpad.conf"
