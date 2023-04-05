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
     cp -rv "../$FLAVOR/Wallpapers" ~/Pictures
    echo "x------ Installing GTK theme ------x"
        git clone https://github.com/catppuccin/gtk tmp -q --recursive

        cd tmp || exit
        pip install catppuccin
        python3 ./install.py "${FLAVOR,,}" --accent red
        mkdir dist
        cp -r "$HOME/.themes/Catppuccin-$FLAVOR-Standard-Red-$VALUE" "dist/$THEME"

    echo "x------ Copying GTK theme ------x"
        sudo cp -r "dist/$THEME" "/usr/share/themes"
        cd ..
        sudo cp -r "../$FLAVOR/openbox-3" "/usr/share/themes/$THEME" 
        rm -rf tmp/

    echo "x------ Running start script ------x"
        bash ~/.config/openbox-themes/themes/$THEME/apply.sh
    break
done
