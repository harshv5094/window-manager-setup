#!/usr/bin/env bash

source ~/GitHub/wm/modules/colors.sh

function package_install_hypr() {
	# Fo Fedora or Red Hat Based Distribution
	if command -v dnf &>/dev/null; then
		echo_info "Installing dnf packages"
		if command -v hyprland &>/dev/null; then
			echo_info "Hyprland copr is enabled"
		else
			echo_info "Enabling hyprland copr"
			sudo dnf copr enable solopasha/hyprland
		fi
		sudo dnf makecache
		sudo dnf install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/dnf-hypr.txt | tr "\n" " ")
		return
	fi

	if command -v pacman &>/dev/null; then
		sudo pacman -S $(grep -vE "^\s*#" ~/GitHub/wm/package-info/pacman-hypr.txt | tr "\n" " ")
		return
	fi
}

function package_install_i3() {

	# Fo Fedora or Red Hat Based Distribution
	if command -v dnf &>/dev/null; then
		echo_info "Installing dnf packages"
		sudo dnf makecache
		sudo dnf install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/dnf-i3.txt | tr "\n" " ")
		return
	fi

	# For Debian Based Distribution
	if command -v nala &>/dev/null; then
		echo_info "Installing nala packages"
		sudo nala install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/apt.txt | tr "\n" " ")
		return
	else
		echo_info "Installing nala"
		sudo apt update && sudo apt upgrade -y
		sudo apt install nala
		echo_info "Installing nala packages"
		sudo nala install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/apt.txt | tr "\n" " ")
		return
	fi

	if command -v pacman &>/dev/null; then
		sudo pacman -S $(grep -vE "^\s*#" ~/GitHub/wm/package-info/pacman-i3.txt | tr "\n" " ")
		return
	fi
}

function package_remove_i3() {
	# Fo Fedora or Red Hat Based Distribution
	if command -v dnf &>/dev/null; then
		echo_info "Removing i3 packages"
		sudo dnf remove $(grep -vE "^\s*#" ~/GitHub/wm/package-info/dnf-i3.txt | tr "\n" " ")
		return
	fi

	# For Debian Based Distribution
	if command -v nala &>/dev/null; then
		echo_info "Removing i3 packages"
		sudo nala remove $(grep -vE "^\s*#" ~/GitHub/wm/package-info/apt.txt | tr "\n" " ")
		return
	fi

	if command -v pacman &>/dev/null; then
		sudo pacman -R $(grep -vE "^\s*#" ~/GitHub/wm/package-info/pacman-i3.txt | tr "\n" " ")
		return
	fi
}

function package_remove_hypr() {
	# Fo Fedora or Red Hat Based Distribution
	if command -v dnf &>/dev/null; then
		echo_info "Removing Hyprland packages"
		sudo dnf remove $(grep -vE "^\s*#" ~/GitHub/wm/package-info/dnf-hypr.txt | tr "\n" " ")
		return
	fi

	if command -v pacman &>/dev/null; then
		sudo pacman -R $(grep -vE "^\s*#" ~/GitHub/wm/package-info/pacman-hypr.txt | tr "\n" " ")
	fi
}

function initial() {
	echo -e "Welcome to Window Manager Installation Setup"
	PS3="Your Option: "
	options=("Clone my wallpapers 🖼️" "Install Packages for hyprland 📦" "Install Packages for i3 📦" "Create Folders Symlinks for hyprland 🔗" "Create Folders Symlinks for i3 🔗" "Remove Packages for hyprland 📦")

	select SELECTED_OPTION in "${options[@]}"; do
		case "${SELECTED_OPTION}" in

		"Clone my wallpapers 🖼️")
			git clone https://github.com/harshv5094/my-wallpapers ~/Pictures/my-wallpapers/
			;;

		"Install Packages for hyprland 📦")
			package_install_hypr
			break
			;;

		"Install Packages for i3 📦")
			package_install_i3
			break
			;;

		"Create Folders Symlinks for hyprland 🔗")
			~/GitHub/wm/modules/folders.sh
			~/GitHub/wm/modules/hypr-folders.sh
			break
			;;

		"Create Folders Symlinks for i3 🔗")
			~/GitHub/wm/modules/folders.sh
			~/GitHub/wm/modules/i3-folders.sh
			break
			;;

		"Remove Packages for hyprland 📦")
			package_remove_hypr
			break
			;;

		"Remove Packages for i3 📦")
			package_remove_i3
			break
			;;

		"*")
			break
			;;
		esac
	done

}

initial
