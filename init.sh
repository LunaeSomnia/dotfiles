
# Required packages
sudo pacman -S hyprland kitty sddm 

# Setting up
sudo systemctl enable --now sddm

# Installing yay
git clone https://aur.archlinux.org/yay.git
cd yay; makepkg -si
rm -rf yay

yay

echo '!!!!!! Dont forget to enable multilib for steam !!!!!!'

# Installing widgets and utils
yay -S xdg-desktop-portal-hyprland polkit-kde-agent qt5-wayland qt6-wayland gnome gnome-extra gnome-control-center adw-gtk3 hyprshot swayosd-git swaync anyrun-git wireplumber pavucontrol aylurs-gtk-shell ttf-jetbrains-mono htop gvfs sassc rustup

sudo systemctl enable --now swayosd-libinput-backend

# Installing apps
yay -S vim qbittorrent vlc swww ffmpeg firefox code bitwarden spotify spotify-adblock lutris steam wine discord zsh obs-studio v4l2loopback-dkms linux-headers musescore muse-hub-bin prismlauncher
