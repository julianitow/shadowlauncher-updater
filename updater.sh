#!/bin/bash
sudo -l >/dev/null
if [[ $? -ne 0 ]]; then
    exit 1;
fi

UPDATER_DIRECTORY="$(dirname $(realpath "$0"))"

echo 'cleaning...'
bash $UPDATER_DIRECTORY/rm.bash /opt/Shadow

echo 'updating...'
bash $UPDATER_DIRECTORY/update_shadow.bash

gnome-shell --version > /dev/null 2>&1
if [[ $? -eq 0 ]]; then
    echo 'reloading gnome shell...'
    cp $UPDATER_DIRECTORY/shadow.desktop $HOME/.local/share/applications
    sudo killall gnome-shell
else
   echo 'not gnome.'
fi

echo 'done !'
