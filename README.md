# dotfiles
my arch linux & hyprland setup 

## Yay

```
sudo pacman -S git 
```

```
git clone https://aur.archlinux.org/yay.git && cd yay
```

```
makepkg -si
```


## Apps

```
yay -S git stow hyprland hypridle hyprpaper alacritty hyprshot yt-dlp \
neovim ttf-hack-nerd waybar zsh tmux fastfetch mpv obsidian swaync \
hyprlock hyprpaper ly wlogout wlsunset xdg-user-dirs amd-ucode bluez \
bluez-utils blueman syncthing keepassxc nework-manager-applet hyprpolkitagent \
pipewire-jack pipewire-alsa pipewire-pulse qjackctl sunity-cursors-git \
nwg-look lxappearance nemo nemo-fileroller npm unzip tofi zathura imv \
mtpfs jmtpfs gvfs-mtp gvfs-gphoto2 ripgrep  zathura-cb zathura-pdf-mupdf \
rate-mirrors-bin qutebrowser yazi jdk-openjdk telegram-desktop-bin go-md2man \
mousepad hyprpicker btop discord steam retroarch retroarch-assets-xmb glow \
retroarch-assets-glui  retroarch-assets-ozone libreoffice-still vulkan-radeon \
lib32-vulkan-radeon python-pygame-python-pip gradle qbittorrent ttf-nerd-fonts-symbols \
shutter-encorder-bin calibre hakuneko-desktop-nightly ttf-nerd-fonts-symbols \
gruvbox-material-gtk-theme-git gruvbox-material-icon-theme-git pavucontrol \
obs-studio xdg-desktop-portal-hyprland cmus gamemode mangohud wine0staging goverlay \ 
peazip-qt-bin batsignal 



```

## dameons 
```
sudo systemctl enable ly.service

xdg-user-dirs-update

sudo systemctl enable bluetooth.service

sudo systemctl enable syncthing@mickey.service

sudo timdeatectl set-ntp true

```


## After Instalation 

Auto-cpufreq
```
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
```

Brillo 
``` 
sudo pacman -S go-md2man

```
```
git clone https://gitlab.com/cameronnemo/brillo.git && cd brillo 
```

``` 
make

```

```
make install.setgid
```




## Installation

```
git clone https://github.com/mikeitrain1/dotfiles.git
cd dotfiles

stow .
```


![screenshot](/wall/hypr.png) 
