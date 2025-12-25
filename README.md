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
yay -S git stow hyprland hypridle hyprpaper hyprlock hyprshot \
swaync waybar zsh tmux alacritty yt-dlp neovim ttf-hack-nerd wlogout \
wlsunset xdg-user-dirs amd-ucode bluez bluez-utils blueman ripgrep fd \
network-manager-applet lxappearance mtpfs jmtpfs gvfs-mtp gvfs-gphoto2 \
tofi npm qutebrowser unzip ttf-nerd-fonts-symbols pavucontrol fcitx5 \
fcitx5-mozc fcitx5-configtool fcitx5-gtk fcitx5-qt \
```

## dameons 
```
xdg-user-dirs-update

sudo systemctl enable bluetooth.service

sudo systemctl enable syncthing@mickey.service

sudo timedatectl set-ntp true

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
