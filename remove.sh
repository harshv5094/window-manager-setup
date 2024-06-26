#!/usr/bin/env bash

source ~/GitHub/wm/modules/colors.sh

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
		sudo nala remove $(grep -vE "^\s*#" ~/GitHub/wm/package-info/apt-i3.txt | tr "\n" " ")
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
	echo -e "Welcome to Window Manager Remove Script"
	PS3="Your Option: "
	options=("Remove Packages for hyprland 📦" "Remove Packages for i3 📦")

	select SELECTED_OPTION in "${options[@]}"; do
		case "${SELECTED_OPTION}" in

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
