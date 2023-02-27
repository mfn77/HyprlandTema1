# HyprlandTema1

Basit Bir Hyprland Konfigürasyonu. Hiçbir düzenlemeyi ben oluşturmadım, sadece kendime göre değiştirdim.

* **Pencere Yöneticisi** • [Hyprland ](https://github.com/hyprwm/Hyprland)🎨
* **Terminal** • [Kitty ](https://github.com/kovidgoyal/kitty) 💻
* **Panel** • [Waybar ](https://aur.archlinux.org/packages/waybar-hyprland-git)🍧
* **Bildirim Uygulaması** • [Dunst ](https://github.com/dunst-project/dunst) 🍃
* **Uygulama Başlatıcı** • [Rofi ](https://github.com/davatorium/rofi) 🚀
* **Dosya Yöneticisi** • [Thunar ](https://github.com/xfce-mirror/thunar)🔖

# Kurulum

## OTOMATİK KURULUM

### Var Olan .config Dosyanızı Yedekleyin!!

İndirmeniz gereken bağımlılıklar ve programlar, bütün konfigürasyon dosyalarıyla beraber kurulum dosyasının içinde mevcut. Programı Çalıştırmak için 3 seçeneğiniz var:

1- Ya terminalden aşağıdaki komutla otomatik kurabilirsiniz:

```sh
curl -s -L https://raw.githubusercontent.com/mfn77/HyprlandTema1/main/Kurulum.sh | bash
```

2- Ya Releases bölümünden Kurulum.sh dosyasını indirdikten sonra grafiksel olarak(GNOME - KDE Plasma gibi masaüstü ortamlarını kullanıyorsanız) sağ tıklayıp özelliklerden çalıştırabilir olarak işaretledikten sonra dosyanın üzerine çift tıklayarak,

3- Ya da yine dosyayı indirdikten sonra indirdiğiniz yerde terminal(uçbirim) açarak aşağıdaki komutla çalıştırabilirsiniz:

```sh
chmod u+x Kurulum.sh
./Kurulum.sh 
```

## MANUEL KURULUM

Bağımlılıklar:

```sh
yay -S hyprland-git wlogout rofi-emoji dunst polkit-gnome hyprpaper-git hyprpicker-git rofi-wayland grimblast-git imagemagick ffmpegthumbnailer 
wf-recorder wl-clipboard socat tumbler wtype xdg-desktop-portal-wlr swaylock-effects xorg-xwayland qt5-wayland qt6-wayland waybar-hyprland-git base-devel rustup python xorg-xwayland git
```
Opsiyonel:

```sh
yay -S blueberry git thunar thunar-archive-plugin neofetch file-roller kitty cava pavucontrol viewnior noise-suppression-for-voice
```
Temalar:

```sh
yay -S catppuccin-gtk-theme-mocha catppuccin-cursors-mocha catppuccin-mocha-grub-theme-git nwg-look breeze-snow-cursor-theme
```

## Katkıda Bulunanlar

[linuxmobile ](https://github.com/linuxmobile)

[PoSayDone ](https://github.com/PoSayDone)
