#!/usr/bin/env bash
echo Installing necessary programs
sudo pacman -S --noconfirm openbox xorg qt5ct pastel nemo nitrogen polybar rofi mpd xmlstarlet dunst lxappearance obconf xsettingsd python3 python-pip git
echo Copying files
sudo cp -rv ../Archcraft\ Files/archcraft /usr/share/
echo Finished installing necessary Archcraft files
echo Starting Catppuccin flavor installer
./install.sh
