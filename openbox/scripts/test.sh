#!/usr/bin/env bash
echo "Are you using Archcraft?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) ARCH=yes; break;;
        No ) ARCH=no; break;;
    esac
done
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
done
select fl in "Mocha" "Frappe" "Macchiato" "Latte"; do
    case "$fl" in
        "Mocha") FLAVORW="Mocha"; VALUE="Dark";
            ;;
        "Frappe") FLAVORW="Frappe"; VALUE="Dark";
            ;;
        "Macchiato") FLAVORW="Macchiato"; VALUE="Dark";
            ;;
        "Latte") FLAVORW="Latte"; VALUE="Light";
            ;;
    esac
done
echo $FLAVOR-$FLAVORW-$ARCH