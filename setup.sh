#!/usr/bin/env bash

source ~/GitHub/wm/modules/colors.sh

function package_install() {

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
		sudo dnf install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/dnf.txt | tr "\n" " ")
	fi

	# For Debian Based Distribution
	if command -v nala &>/dev/null; then
		echo_info "Installing nala packages"
		sudo nala install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/apt.txt | tr "\n" " ")

	else
		echo_info "Installing nala"
		sudo apt update && sudo apt upgrade -y
		sudo apt install nala
		echo_info "Installing nala packages"
		sudo nala install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/apt.txt | tr "\n" " ")
	fi
}

function initial() {
	echo -e "Welcome to Window Manager Installation Setup"
	PS3="Your Option: "
	options=("Install Packages 📦" "Create Folders Symlinks 🔗" "Quit")

	select SELECTED_OPTION in "${options[@]}"; do
		case "${SELECTED_OPTION}" in

		"Install Packages 📦")
			package_install
			;;

		"Create Folders Symlinks 🔗")
			~/GitHub/wm/modules/folders.sh
			;;

		"Quit")
			echo_label "Exiting..."
			break
			;;

		"*")
			break
			;;
		esac
	done

}

initial
