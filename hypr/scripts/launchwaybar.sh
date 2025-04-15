#!/bin/bash

CONFIG="$HOME/.config/hypr/waybar/config"
STYLE="$HOME/.config/hypr/waybar/style.css"

if [[ $(pgrep -x "waybar") = "waybar" ]];
then
killall waybar
else
if [[ $(pgrep -x "waybar") = "" ]];
then
waybar -c $CONFIG -s $STYLE > /dev/null 2>&1 &
fi
fi
