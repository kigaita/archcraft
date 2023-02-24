#!/usr/bin/env bash

# Archcraft Catppuccin installation script
# vanillyn, nekowinston

# GTK Installation
gtkdir=$(pwd)/tmp

echo "Select your flavor"
select fl in "Mocha" "Frappe" "Macchiato" "Latte"; do
    case "$fl" in
        "Mocha") FLAVOR="Mocha"; VALUE="Dark";
            ;;
        "Frappe") FLAVOR="Frappe"; VALUE="Dark";
            ;;
        "Macchiato") FLAVOR="Macchiato"; VALUE="Dark";
            ;;
        "Latte") FLAVOR="Latte"; VALUE="Light";
            ;;
    esac

    THEME="Catppuccin-$FLAVOR"

    echo "x------ Copying files ------x"
     cp -rv "../$FLAVOR/home/.config" ~
     cp "../$FLAVOR/home/Wallpapers" ~/Pictures

    echo "x------ Installing GTK theme ------x"
        git clone https://github.com/catppuccin/gtk tmp

        cd tmp || exii
        pip install catppuccin
            python3 ./install.py "${FLAVOR,,}" --accent pink --dest "${gtkdir}/dist"
            cp -r "dist/Catppuccin-$FLAVOR-Standard-Pink-$VALUE" "dist/Catppuccin-$FLAVOR"

    echo "x------ Copying GTK theme ------x"
        sudo cp -r "dist/$THEME" "/usr/share/themes"
        cd ..
        rm -rf tmp/
    echo "x------ Running start script ------x"
        ~/.config/openbox-themes/themes/$THEME/apply.sh
    break

done
