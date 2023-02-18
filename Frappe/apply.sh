#!/usr/bin/env bash
echo Installing necessary programs
sudo pacman -S --noconfirm openbox xorg qt5ct pastel nitrogen polybar rofi mpd xmlstarlet dunst lxappearance obconf

echo Copying files
cp -r home/.config/ ~/
cp -r home/Wallpapers/ ~/Pictures/
sudo cp -r root/usr/ /

echo Running start script
bash ~/.config/openbox-themes/themes/catppuccin/apply.sh

echo installation complete!
echo ------------------------------------------
echo you will need to use lxappearance to continue configuration.
