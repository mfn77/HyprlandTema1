#!/bin/bash
DIR=$HOME
CONFIG_DIR=$HOME/.config
bold=$(tput bold)
normal=$(tput sgr0)

clear

#Dependencies
echo -e "\e[1;31m${bold}Gerekli Paketler Yukleniyor${normal}\e[0m"
yay -Syu --noconfirm 'hyprland-git' 'wlogout' 'rofi-emoji' 'dunst' 'polkit-gnome' 'hyprpaper-git' 'hyprpicker-git'\
  'xdg-user-dirs-gtk' 'rofi-wayland' 'grimblast-git' 'imagemagick' 'ffmpegthumbnailer' 'bluez'\
  'wf-recorder' 'wl-clipboard' 'socat' 'tumbler' 'wtype' 'xdg-desktop-portal-wlr'\
  'catppuccin-gtk-theme-mocha' 'catppuccin-cursors-mocha' 'catppuccin-mocha-grub-theme-git' 'nwg-look'\
  'blueberry' 'swaylock-effects' 'git' 'thunar' 'thunar-archive-plugin' 'neofetch' 'breeze-snow-cursor-theme' 'file-roller'\
  'kitty' 'qt5-wayland' 'qt6-wayland' 'firefox' 'wget' 'xorg-xwayland'\
  'nano' 'apple-fonts' 'libconfig' 'cmake' 'bluez-utils' 'waybar-hyprland-git' 'cava' 'pavucontrol' 'ranger' 'viewnior' 'noise-suppression-for-voice'\
  'base-devel' 'rustup' 'python' --needed
BACK_PID=$!
wait $BACK_PID
clear

echo -e "\e[1;31m${bold}Flatpak Yukleniyor${normal}\e[0m"
sudo pacman -Syu --noconfirm 'flatpak'
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
BACK_PID=$!
wait $BACK_PID
clear

cd $HOME

#Hyprland Ayar Dosyası Kopyalama
echo -e "\e[1;31m${bold}Hyprland Ayarlari Yapilandiriliyor${normal}\e[0m"
git clone https://github.com/mfn77/HyprlandTema1.git
#rm -rf $DIR $CONFIG_DIR/eww $CONFIG_DIR/gtk-3.0 $CONFIG_DIR/gtk-4.0 $CONFIG_DIR/gtklock $CONFIG_DIR/gtklock $CONFIG_DIR/kitty $CONFIG_DIR/neofetch $CONFIG_DIR/rofi $CONFIG_DIR/swaync $CONFIG_DIR/waybar
cd $HOME/HyprlandTema1/
cp -Rv $HOME/HyprlandTema1/config/hpyr $CONFIG_DIR
clear

#Diğer Ayar Dosyalarını Kopyalama
echo -e "\e[1;31m${bold}Diger Ayarlar Esitleniyor${normal}\e[0m"
cp -Rv $HOME/HyprlandTema1/config/kitty $CONFIG_DIR/
cp -Rv $HOME/HyprlandTema1/config/gtk-3.0 $CONFIG_DIR/
cp -Rv $HOME/HyprlandTema1/config/dunst $CONFIG_DIR/
cp -Rv $HOME/HyprlandTema1/config/swaylock $CONFIG_DIR/
cp -Rv $HOME/HyprlandTema1/config/nwg-look $CONFIG_DIR/
cp -Rv $HOME/HyprlandTema1/config/viewnior $CONFIG_DIR/
cp -Rv $HOME/HyprlandTema1/config/rofi $CONFIG_DIR/
cp -Rv $HOME/HyprlandTema1/config/wlogout $CONFIG_DIR/
cp -Rv $HOME/HyprlandTema1/config/waybar $CONFIG_DIR/
cp -Rv $HOME/HyprlandTema1/config/xsettingsd $CONFIG_DIR/
cp -v $HOME/HyprlandTema1/config/mimeapps.list $CONFIG_DIR/
cp -Rv $HOME/HyprlandTema1/local/bin $DIR/.local
cp -Rv $HOME/HyprlandTema1/wallpapers $DIR
cp -Rv $HOME/HyprlandTema1/scripts $DIR
cp -v $HOME/HyprlandTema1/profile $DIR
cp -v $HOME/HyprlandTema1/autostart $DIR
cd $DIR
mv profile .profile
mv autostart .autostart
clear

#Fontlar
echo -e "\e[1;31m${bold}Yazi Fontlari Yukleniyor${normal}\e[0m"
mkdir -p $HOME/Downloads/nerdfonts/
cd $HOME/Downloads/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.1/CascadiaCode.zip
unzip '*.zip' -d $HOME/Downloads/nerdfonts/
rm -rf *.zip
sudo cp -R $HOME/Downloads/nerdfonts/ /usr/share/fonts/
fc-cache -r
rm -rf $HOME/Downloads/nerdfonts/
clear

