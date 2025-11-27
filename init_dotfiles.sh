#!/bin/bash

# Move whole .config from inside /dotfiles to proper directory
cp -r ~/dotfiles/.config ~/.config

# Move rofi theme to the correct directory
mkdir -p /usr/share/rofi/themes
mv ~/.config/rofi/lunae.rasi /usr/share/rofi/themes
