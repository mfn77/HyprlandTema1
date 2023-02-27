# HyprlandTema1

Basit Bir Hyprland Konfigürasyonu. Hiçbir düzenlemeyi ben oluşturmadım, sadece kendime göre değiştirdim.

* **Pencere Yöneticisi** • [Hyprland ](https://github.com/hyprwm/Hyprland)🎨
* **Terminal** • [Kitty ](https://github.com/kovidgoyal/kitty) 💻
* **Panel** • [Waybar ](https://aur.archlinux.org/packages/waybar-hyprland-git)🍧
* **Bildirim Uygulaması** • [Dunst ](https://github.com/dunst-project/dunst) 🍃
* **Uygulama Başlatıcı** • [Rofi ](https://github.com/davatorium/rofi) 🚀
* **Dosya Yöneticisi** • [Thunar ](https://github.com/xfce-mirror/thunar)🔖

# Kurulum
İndirmeniz gereken bağımlılıklar ve programlar, bütün konfigürasyon dosyalarıyla beraber kurulum dosyasının içinde mevcut. Sadece kullanıcı dosyanıza indirip oradan kurulum.sh dosyasını çalıştıracaksınız. Kurulum.sh dosyasını ya grafiksel olarak(GNOME - KDE Plasma gibi masaüstü ortamlarını kullanıyorsanız) sağ tıklayıp özelliklerden çalıştırabilir olarak işaretledikten sonra dosyanın üzerine çift tıklayarak, 

ya da terminalden 

```sh
cd $
chmod u+x Kurulum.sh
./Kurulum.sh 
```

komutuyla çalıştırabilirsiniz.

## ÖNEMLİ!!
Kurulum.sh dosyasını ana kullanıcı dosyanıza indirmeniz çok önemlidir, yoksa çalışmaz. Eğer İndirilenler klasörüne indiyse kopyalayıp ana kullanıcı dosyasına yani /home/(KullanıcıAdı) konumuna taşımanız gerekir.

```sh
cd /$HOME/İndirilenler
mv Kurulum.sh /$HOME
cd $
./Kurulum.sh 
```


## Katkıda Bulunanlar

[linuxmobile ](https://github.com/linuxmobile)
