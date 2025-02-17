# dotfiles
my arch linux & hyprland setup 



## Requirements

```
yay -S git stow hyprland hypridle hyprpaper alacritty hyprshot\
neovim ttf-hack-nerd waybar zsh tmux fastfetch mpv obsidian swaync \
hyprlock hyprpaper ly wlogout wlsunset xdg-user-dirs amd-ucode bluez \
bluez-utils blueman syncthing keepassxc nework-manager-applet hyprpolkitagent \
pipewire-jack pipewire-alsa pipewire-pulse qjackctl sunity-cursors-git \
nwg-look lxappearance nemo nemo-fileroller npm unzip tofi zathura \
mtpfs jmtpfs gvfs-mtp gvfs-gphoto2 ripgrep  zathura-cb zathura-pdf-mupdf \
ttf-ms-win11-auto rate-mirrors librwolf-bin yazi jdk-openjdk telegram-desktop-bin\
```

## commands
```
sudo systemctl enable ly.service

xdg-user-dirs-update

sudo systemctl enable bluetooth.service


sudo systemctl enable syncthing@mickey.service
```




## Installation

```
git clone https://github.com/mikeitrain1/dotfiles.git
cd dotfiles

stow .
```


![screenshot](/wall/hypr.png) 
