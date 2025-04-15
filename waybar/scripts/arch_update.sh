#!/bin/sh

pacman="$(checkupdates | wc -l)"
yay="$(yay -Qua | wc -l)"

echo "$((pacman + yay))"
