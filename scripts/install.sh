#!/bin/bash

echo "[LOGGING] Installing required packages..."

pacman -S go gc guile make yay rustup

rustup install stable
rustup install nightly

echo "[LOGGING] Installing environment"

yay -S hyprland swww eww dhcpcd linux-firmware ffmpeg

echo "[LOGGING] Installing apps"

yay -S code libreoffice-still figma-linux bitwarden gimp

echo "[LOGGING] Finishing touches..."

echo "[LOGGING] Done!"

