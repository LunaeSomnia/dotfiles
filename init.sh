
# Required packages
sudo pacman -S hyprland kitty sddm 

# Setting up
sudo systemctl enable --now sddm

# Installing yay
git clone https://aur.archlinux.org/yay.git
cd yay; makepkg -si
rm -rf yay

yay

# Installing widgets and utils
yay -S gnome gnome-extra hyprshot swayosd-git swaync anyrun-git wireplumber pavucontrol aylurs-gtk-shell ttf-jetbrains-mono htop

sudo systemctl enable --now swayosd-libinput-backend

# Installing apps
yay -S firefox code bitwarden
