#!/usr/bin/env bash

echo "Select your flavor"
select fl in "Mocha" "Frappe" "Macchiato" "Latte" "All"; do
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
        "All")
            ./install-all.sh;
            ;;
    esac
    if [[ "$fl" = "All" ]]
    then
        break
    fi
    THEME="Catppuccin-$FLAVOR"
    echo Copying files
    cp -rv "../$FLAVOR/home/.config" ~
    cp "../$FLAVOR/home/Wallpapers" ~/Pictures
    sudo  cp -rv "../$FLAVOR/root/usr/share/themes" /usr/share/
    echo Running start script
    ~/.config/openbox-themes/themes/$THEME/apply.sh
    break
done