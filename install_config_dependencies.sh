#!/bin/sh

su -l coffee

echo "-------- ------"
echo "Updating system"
echo "-------- ------"
echo

sudo pacman -Syyu

git --help >/dev/null 2>/dev/null

if [ $? -ne 0 ] ; then
	echo "---------- ---"
	echo "Installing git"
	echo "---------- ---"
	echo

	sudo pacman -S git --noconfirm
fi

paru --help >/dev/null 2>/dev/null

if [ $? -ne 0 ] ; then
	echo "---------- ----"
	echo "Installing paru"
	echo "---------- ----"
	echo

	mkdir -p $HOME/git/github
	cd $HOME/git/github
	git clone https://aur.archlinux.org/paru.git
	cd paru
	makepkg -si
fi

# NESRY OFC PCKGS

echo "---------- --------- -------- --------"
echo "Installing necessary official packages"
echo "---------- --------- -------- --------"
echo

# sudo pacman -S alacritty alsa bashtop bc bind bluez bluez-utils ccls cron dmenu dragon exa feh flameshot fzf giflib gnutls lib32-giflib lib32-gnutls lib32-libldap lib32-libgpg-error lib32-sqlite lib32-libpulse lib32-nvidia-utils maim mtr ncmpcpp neofetch neovim networkmanager nftables nvidia nvidia-utils openvpn procs pulseaudio python-lxml ripgrep tldr tokei traceroute vifm vim wine wine-gecko wine-mono wireless_tools wpa_supplicant xclip xf86-video-vesa xorg-server xorg-xinit xorg-xprop xorg-xset --noconfirm

sudo pacman -S alacritty alsa alsa-lib alsa-plugins at bashtop bc bind bluez bluez-utils ccls cron cups dash dmenu docker docker-compose docker-machine dotnet-runtime dotnet-sdk dragon emacs exa fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-gtk fcitx5-hangul fcitx5-mozc fcitx5-qt feh flameshot fzf gdb giflib gnutls gst-plugins-base-libs gtk3 iotop iperf jq lib32-alsa-lib lib32-alsa-plugins lib32-giflib lib32-gnutls lib32-gst-plugins-base-libs lib32-gtk3 lib32-libjpeg-turbo lib32-libldap lib32-libgcrypt lib32-libgpg-error lib32-libpng lib32-libpulse lib32-libva lib32-libxcomposite lib32-libxinerama lib32-libxslt lib32-mpg123 lib32-ncurses lib32-nvidia-utils lib32-openal lib32-opencl-icd-loader lib32-sqlite lib32-v4l-utils lib32-vulkan-icd-loader libgcrypt libjpeg-turbo libldap libgpg-error libpulse libva libxcomposite libxinerama libxslt maim mpg123 mtr ncmpcpp ncurses neofetch neovim netcat networkmanager nftables nmap noto-fonts-cjk nvidia nvidia-utils openal opencl-icd-loader openvpn pacman-contrib picom procs pulseaudio python-lxml ripgrep rustup sshpass smem spotifyd sqlite strace stress sysstat tldr tokei traceroute ttf-joypixels v4l-utils vifm vim vivaldi vivaldi-ffmpeg-codecs vulkan-icd-loader wine-staging wine-gecko wine-mono wireless_tools wpa_supplicant xclip xf86-video-vesa xorg-xcalc xorg-server xorg-xinit xorg-xprop xorg-xset

[ $? -eq 0 ] && notify-send "Pacman install" "Packages successffully installed!" || notify-send "Error" "An error occurred while trying to install the packages"

# NESRY AUR PCKGS

echo "---------- --------- --- --------"
echo "Installing necessary AUR packages"
echo "---------- --------- --- --------"
echo

paru -S dragon-drag-and-drop libxft-bgra-git mrtg nvim-packer-git protonvpn soapui spotify spotify-tui python-ueberzug-git vim-plug wal

[ $? -eq 0 ] && notify-send "AUR install" "Packages successffully installed!" || notify-send "Error" "An error occurred while trying to install the packages"

# NESRY DPNCS

echo "---------- --------- ------------"
echo "Installing necessary dependencies"
echo "---------- --------- ------------"
echo

sudo pacman -S calcurse ffmpegthumbnailer git mpc mpd python python-pip pyenv broot # needs to run "broot --install"

[ $? -eq 0 ] && notify-send "Pacman install" "Packages successffully installed!" || notify-send "Error" "An error occurred while trying to install the packages"

echo "Do not forget to run \"broot --install\""

paru -S starship # AUR code

[ $? -eq 0 ] && notify-send "AUR install" "Packages successffully installed!" || notify-send "Error" "An error occurred while trying to install the packages"

# INTNG PCKGS

echo "---------- ----------- --------"
echo "Installing interesting packages"
echo "---------- ----------- --------"
echo

sudo pacman -S alsa-utils audacious bat discord dpkg dunst figlet htop inetutils intellij-idea-community-edition jp2a lazygit links lolcat maven mpv mypaint ncdu net-tools obs-studio pamixer pavucontrol playerctl ranger screen sxiv tigervnc tree ttf-font-awesome tmux vimiv vlc x11vnc xinetd youtube-dl zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps

# nvtop
# packer
# texlive-most # after installation type $ packer -Ss beamer

[ $? -eq 0 ] && notify-send "Pacman install" "Packages successffully installed!" || notify-send "Error" "An error occurred while trying to install the packages"

paru -S android-ndk android-studio android-sdk android-sdk-build-tools android-sdk-platform-tools android-platform cava deskreen drawpile eclipse-jee edex-ui gotop gromit-mpx irqtop lf onlyoffice-bin packettracer patat-bin postman-bin slack-desktop snap steam subnetcalc tangram x2vnc-no-xinerama

[ $? -eq 0 ] && notify-send "AUR install" "Packages successffully installed!" || notify-send "Error" "An error occurred while trying to install the packages"

# PY DPNCS

echo "---------- ------ ------------"
echo "Installing python dependendies"
echo "---------- ------ ------------"
echo

pip install coc
pip install jedi

# coc (in pip)
# coc (in pip3)
# jedi (in pip)
# jedi (in pip3)

[ $? -eq 0 ] && notify-send "Pacman Install" "Packages successffully installed!" || notify-send "Error" "An error occurred while trying to install some packages"
