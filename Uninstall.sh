#!/bin/bash
DIR=$HOME
CONFIG_DIR=$HOME/.config
bold=$(tput bold)
normal=$(tput sgr0)

cd $HOME
clear

#Dependencies
echo -e "\e[1;31m${bold}Kaldırılıyor${normal}\e[0m"
yay -R --noconfirm 'hyprland-git' 'wlogout' 'rofi-emoji' 'dunst' 'polkit-gnome' 'hyprpaper-git' 'hyprpicker-git'\
  'rofi-wayland' 'grimblast-git'\
  'wf-recorder' 'wl-clipboard' 'socat' 'tumbler' 'wtype' 'xdg-desktop-portal-wlr'\
  'catppuccin-gtk-theme-mocha' 'catppuccin-cursors-mocha' 'catppuccin-mocha-grub-theme-git' 'nwg-look'\
  'blueberry' 'swaylock-effects' 'thunar' 'thunar-archive-plugin' 'neofetch' 'breeze-snow-cursor-theme' 'file-roller'\
  'kitty' 'qt5-wayland' 'qt6-wayland'\
  'apple-fonts' 'cmake' 'waybar-hyprland-git' 'cava' 'pavucontrol' 'viewnior' 'noise-suppression-for-voice' 'rustup'\
BACK_PID=$!
wait $BACK_PID
clear

cd $HOME

#Removing Configs
echo -e "\e[1;31m${bold}Konfigürasyon Kaldırılıyor${normal}\e[0m"
rm -rf $HOME/.config/kitty
rm -rf $HOME/.config/dunst
rm -rf $HOME/.config/swaylock
rm -rf $HOME/.config/nwg-look
rm -rf $HOME/.config/viewnior
rm -rf $HOME/.config/rofi
rm -rf $HOME/.config/wlogout
rm -rf $HOME/.config/hypr
rm -rf $HOME/.config/waybar
rm -rf $HOME/.config/xsettingsd
rm -rf $HOME/.config/gtk-3.0
rm -f $HOME/.config/mimeapps.list
rm -rf $HOME/.scripts
rm -rf $HOME/.wallpapers
rm -rf $HOME/.local/bin
rm -f $HOME/.autostart
cp -Rv $DIR/.OldConfig/gtk-3.0 $CONFIG_DIR/
cp -Rv $DIR/.OldConfig/xsettingsd $CONFIG_DIR/
cp -v $DIR/.OldConfig/mimeapps.list $CONFIG_DIR/
clear
