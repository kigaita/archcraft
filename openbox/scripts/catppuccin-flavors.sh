#!/usr/bin/env bash

echo "Select your flavor"
select fl in "Mocha" "Frappe" "Macchiato" "Latte"; do
    case "$fl" in
        "Mocha")
            FLAVOR="Mocha";
            ;;
        "Frappe")
            FLAVOR="Frappe";
            ;;
        "Macchiato")
            FLAVOR="Macchiato";
            ;;
        "Latte")
            FLAVOR="Latte";
            ;;
    esac
    THEME="Catppuccin-$FLAVOR"
    echo Copying files
    cp -rv "../$FLAVOR/home/.config" ~
    cp "../$FLAVOR/home/Wallpapers" ~/Pictures
    sudo  cp -rv "../$FLAVOR/root/usr/share/themes" /usr/share/
    echo Running start script
    ~/.config/openbox-themes/themes/$THEME/apply.sh
    break
done