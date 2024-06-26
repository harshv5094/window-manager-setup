#!/usr/bin/env bash

source ~/GitHub/wm/modules/colors.sh

function package_install_common() {
	# For Fedora or Red Hat Based Distribution
	if command -v dnf &>/dev/null; then
		echo_info "Installing common packages"
		sudo dnf install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/dnf-common.txt | tr "\n" " ")
		return
	fi
}

function package_install_hypr() {
	# Fo Fedora or Red Hat Based Distribution
	if command -v dnf &>/dev/null; then
		echo_info "Installing dnf packages"
		if command -v hyprland &>/dev/null; then
			echo_info "Hyprland copr is enabled"
		else
			echo_info "Enabling hyprland copr"
			sudo dnf copr enable solopasha/hyprland -y
		fi
		sudo dnf makecache
		sudo dnf install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/dnf-hypr.txt | tr "\n" " ")
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
		sudo nala install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/apt-i3.txt | tr "\n" " ")
		return
	else
		echo_info "Installing nala"
		sudo apt update && sudo apt upgrade -y
		sudo apt install nala
		echo_info "Installing nala packages"
		sudo nala install $(grep -vE "^\s*#" ~/GitHub/wm/package-info/apt-i3.txt | tr "\n" " ")
		return
	fi
}

function initial() {
	echo -e "Welcome to Window Manager Installation Setup"
	PS3="Your Option: "
	options=("Clone wallpapes, install common packages, link common configuration folders" "Hyprland 🌈" "i3wm 🌈")

	select SELECTED_OPTION in "${options[@]}"; do
		case "${SELECTED_OPTION}" in

		"Clone wallpapes, install common packages, link common configuration folders")
			if [ -e "$HOME/Pictures/my-wallpapers/" ]; then
				echo_info "Wallpaper Directory is already clonned"
			else
				echo_info "Clonning my wallpaper directory"
				git clone https://github.com/harshv5094/my-wallpapers ~/Pictures/
			fi
			package_install_common
			~/GitHub/wm/modules/folders.sh
			break
			;;

		"Hyprland 🌈")
			package_install_hypr
			~/GitHub/wm/modules/hypr-folders.sh
			break
			;;

		"i3wm 🌈")
			package_install_i3
			~/GitHub/wm/modules/i3-folders.sh
			break
			;;

		"*")
			break
			;;
		esac
	done

}

initial
