#!/usr/bin/env bash

source ~/.ghq/github.com/harshv5094/window-manager-setup/modules/colors.sh

function package_remove_i3() {
  # Fo Fedora or Red Hat Based Distribution
  if command -v dnf &>/dev/null; then
    echo_info "Removing i3 packages"
    sudo dnf remove $(grep -vE "^\s*#" ~/.ghq/github.com/harshv5094/window-manager-setup/package-info/dnf-i3.txt | tr "\n" " ")
    return
  fi

  # For Debian Based Distribution
  if command -v nala &>/dev/null; then
    echo_info "Removing i3 packages"
    sudo nala remove $(grep -vE "^\s*#" ~/.ghq/github.com/harshv5094/window-manager-setup/package-info/apt-i3.txt | tr "\n" " ")
    return
  fi

  if command -v pacman &>/dev/null; then
    sudo pacman -R $(grep -vE "^\s*#" ~/.ghq/github.com/harshv5094/window-manager-setup/package-info/pacman-i3.txt | tr "\n" " ")
    return
  fi
}

function package_remove_hypr() {
  # Fo Fedora or Red Hat Based Distribution
  if command -v dnf &>/dev/null; then
    echo_info "Removing Hyprland packages"
    sudo dnf remove $(grep -vE "^\s*#" ~/.ghq/github.com/harshv5094/window-manager-setup/package-info/dnf-hypr.txt | tr "\n" " ")
    echo_info "Disabling hyprland copr"
    sudo dnf copr disable solopasha/hyprland
    return
  fi

  if command -v pacman &>/dev/null; then
    sudo pacman -R $(grep -vE "^\s*#" ~/.ghq/github.com/harshv5094/window-manager-setup/package-info/pacman-hypr.txt | tr "\n" " ")
  fi
}

function package_remove_common() {
  # For Fedora or Red Hat Based Distribution
  if command -v dnf &>/dev/null; then
    echo_info "Installing common packages"
    sudo dnf remove $(grep -vE "^\s*#" ~/.ghq/github.com/harshv5094/window-manager-setup/package-info/dnf-common.txt | tr "\n" " ")
    return
  fi
}

function initial() {
  echo -e "Welcome to Window Manager Remove Script"
  PS3="Your Option: "
  options=("Remove Common Packages 📦" "Remove Packages for hyprland 📦" "Remove Packages for i3 📦")

  select SELECTED_OPTION in "${options[@]}"; do
    case "${SELECTED_OPTION}" in

    "Remove Common Packages 📦")
      package_remove_common
      unlink ~/.config/dunst
      break
      ;;

    "Remove Packages for hyprland 📦")
      package_remove_hypr
      unlink ~/.config/hypr
      unlink ~/.config/wofi
      unlink ~/.config/wlogout
      unlink ~/.config/waybar
      break
      ;;

    "Remove Packages for i3 📦")
      package_remove_i3
      unlink ~/.config/i3
      unlink ~/.config/polybar
      unlink ~/.config/rofi
      unlink ~/.config/nitorgen
      break
      ;;

    "*")
      break
      ;;
    esac
  done

}

initial
