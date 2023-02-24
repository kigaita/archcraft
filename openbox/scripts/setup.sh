#!/usr/bin/env bash
echo "Are you using Archcraft?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) ./install.sh; break;;
        No ) ./archcraft-install.sh; break;;
    esac
done
