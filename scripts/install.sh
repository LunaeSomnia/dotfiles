#!/bin/bash

echo "[LOGGING] Installing required packages..."

sudo pacman -S go gc guile make yay rustup glibc kitty ssdm
sudo yay -S patch libva-vdpau-driver-wayland libva-vdpau-driver-wayland libva-intel-driver xdg-desktop-portal-gtk

rustup install stable
rustup install nightly

echo "[LOGGING] Installing environment"

sudo yay -S hyprland swww eww dhcpcd linux-firmware ffmpeg

echo "[LOGGING] Installing apps"

sudo yay -S code libreoffice-still figma-linux bitwarden gimp nwg-look

echo "[LOGGING] Finishing touches..."

sudo rm -rf /opt/figma-linux/libm.so.6

echo "[LOGGING] Done!"

