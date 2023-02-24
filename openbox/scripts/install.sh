#!/usr/bin/env bash

# Archcraft Catppuccin installation script
# vanillyn, nekowinston

# Flavor Selection
echo "Select your flavor!"
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
     cp -rv "../$FLAVOR/.config" ~
     cp "../$FLAVOR/Wallpapers" ~/Pictures

    echo "x------ Installing GTK theme ------x"
        git clone https://github.com/catppuccin/gtk tmp

        cd tmp || exit
        pip install catppuccin

        gtkdir=$(pwd)/tmp
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