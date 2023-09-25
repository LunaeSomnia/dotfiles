#!/bin/bash

echo "[LOGGING] Installing required packages..."

sudo pacman -Sy go gc guile make yay rustup glibc kitty ssdm

rustup install stable
rustup install nightly

echo "[LOGGING] Installing environment"

sudo yay -Sy hyprland swww eww dhcpcd linux-firmware ffmpeg

echo "[LOGGING] Installing apps"

sudo yay -Sy code libreoffice-still figma-linux bitwarden gimp

echo "[LOGGING] Finishing touches..."

echo "[LOGGING] Done!"

