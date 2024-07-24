#!/usr/bin/env bash

source ~/.ghq/github.com/harshv5094/window-manager-setup/modules/colors.sh
source ~/.ghq/github.com/harshv5094/window-manager-setup/modules/cmd_check.sh

# hyprland
if [ -e "$HOME/.config/hypr" ]; then
  echo_danger "Deleting Existing Hyperland Config"
  rm -rf "$HOME/.config/hypr"
  delete_folder_check "hypr"

  echo_info "Linking Hyperland Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/hypr" "$HOME/.config/"
  link_folder_check "hypr"
else
  echo_info "Linking Hyperland Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/hypr" "$HOME/.config/"
  link_folder_check "hypr"
fi

# waybar
if [ -e "$HOME/.config/waybar" ]; then
  echo_danger "Deleting Existing Waybar Config"
  rm -rf "$HOME/.config/waybar"
  delete_folder_check "waybar"

  echo_info "Linking Waybar Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/waybar" "$HOME/.config/"
  link_folder_check "waybar"
else
  echo_info "Linking Waybar Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/waybar" "$HOME/.config/"
  link_folder_check "waybar"
fi

# wofi
if [ -e "$HOME/.config/wofi" ]; then
  echo_danger "Deleting Existing Wofi Config"
  rm -rf "$HOME/.config/wofi"
  delete_folder_check "wofi"

  echo_info "Linking Wofi Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/wofi" "$HOME/.config/"
  link_folder_check "wofi"
else
  echo_info "Linking Wofi Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/wofi" "$HOME/.config/"
  link_folder_check "wofi"
fi

# wlogout
if [ -e "$HOME/.config/wlogout" ]; then
  echo_danger "Deleting Existing wlogout Config"
  rm -rf "$HOME/.config/wlogout"
  delete_folder_check "wlogout"

  echo_info "Linking wlogout Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/wlogout" "$HOME/.config/"
  link_folder_check "wlogout"
else
  echo_info "Linking wlogout Config"
  ln -s "$HOME/.ghq/github.com/harshv5094/window-manager-setup/.config/wlogout" "$HOME/.config/"
  link_folder_check "wlogout"
fi
