#!/usr/bin/env bash
echo "Are you using Archcraft?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) ./catppuccin-flavors.sh; break;;
        No ) ./archcraft-files.sh; break;;
    esac
done