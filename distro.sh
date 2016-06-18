#!/usr/bin/env sh

distro=$1

if [ ! $distro ]; then
	echo "/usr/share/games/fortune/"
elif [ $distro = "debian" ]; then
	echo "/usr/share/games/fortunes/"
elif [ $distro = "fedora" ]; then
	echo "/usr/share/games/fortune/"
else
	echo "Unknown distribution" $distro
fi
