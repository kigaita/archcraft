#!/usr/bin/env bash
echo Installing necessary programs
sudo pacman -S --noconfirm openbox xorg qt5ct pastel nemo nitrogen polybar rofi mpd xmlstarlet dunst lxappearance obconf xsettingsd
echo Copying files
sudo cp -rv ../Archcraft\ Files/archcraft /usr/share/
echo Finished installing necessary Archcraft files
echo Starting Catppuccin flavor installer
./catppuccin-flavors
