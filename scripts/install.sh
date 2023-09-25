#!/bin/bash

echo "[LOGGING] Installing required packages..."

sudo pacman -S go gc guile make yay rustup glibc kitty ssdm
sudo pacman -S patch libva-vdpau-driver-wayland libva-vdpau-driver-wayland libva-intel-driver

rustup install stable
rustup install nightly

echo "[LOGGING] Installing environment"

sudo yay -S hyprland swww eww dhcpcd linux-firmware ffmpeg

echo "[LOGGING] Installing apps"

sudo yay -S code libreoffice-still figma-linux bitwarden gimp gnome-shell-extensions gnome-tweak-tool

echo "[LOGGING] Finishing touches..."

echo "[LOGGING] Done!"

