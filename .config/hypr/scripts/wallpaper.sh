#!/usr/bin/env bash

hyprctl hyprpaper unload all
killall hyprpaper

echo "splash = true" >~/.config/hypr/hyprpaper.conf
echo "splash_offset = 5.0" >>~/.config/hypr/hyprpaper.conf
echo "ipc = true" >>~/.config/hypr/hyprpaper.conf
monitors=$(hyprctl monitors -j | jq -r ".[] | .name")

for monitor in $monitors; do
	wallpaper=$(fd ".png|.jpg|.jpeg" ~/Pictures/my-wallpapers/ | shuf -n1)
	echo "preload = $wallpaper" >>~/.config/hypr/hyprpaper.conf
	echo "wallpaper = $monitor,$wallpaper" >>~/.config/hypr/hyprpaper.conf
done

hyprpaper &
