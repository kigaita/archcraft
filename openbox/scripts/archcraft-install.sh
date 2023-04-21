#!/usr/bin/env bash
echo Installing necessary programs
sudo pacman -S --noconfirm openbox xorg qt5ct pastel thunar nitrogen polybar rofi mpd xmlstarlet dunst lxappearance obconf xsettingsd python3 python-pip git alacritty
echo Copying files
sudo cp -rv ../Archcraft\ Files/archcraft /usr/share/
echo Finished installing necessary Archcraft files
echo Checking permissions...
sudo chmod 774 /usr/share/archcraft -R
echo Starting Catppuccin flavor installer
./install.sh
