#!/bin/bash

sys_update() {
  sudo pacman -Syu
}

paru_install() {
  git clone https://aur.archlinux.org/paru.git && cd paru || exit
  makepkg -si --noconfirm
  cd .. && sudo rm -rf paru
}

install_pkgs() {
  paru -Sy --needed "$@"
}

pkgs_install() {
	install_pkgs ueberzugpp paru btop fastfetch fish starship zoxide rsync git jq parallel imagemagick libnotify pacman-contrib brightnessctl
	install_pkgs 7zip fd fzf poppler age keychain openssh hyprland hypridle hyprpaper hyprlock swaync nwg-look waybar wlogout wl-clipboard slurp grimblast-git
	install_pkgs satty hyprpolkitagent xdg-desktop-portal-hyprland xdg-desktop-portal-gtk networkmanager network-manager-applet blueman bluez bluez-utils
	install_pkgs proton-vpn-gtk-app udiskie dolphin yazi ark trash-cli glow qt5ct qt6ct qt5-wayland qt6-wayland kde-cli-tools tela-circle-icon-theme-dracula
	install_pkgs gtk4 gtk3 pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse gst-plugin-pipewire wireplumber pavucontrol pamixer ghostty
	install_pkgs rofi-wayland spotify-launcher vivaldi vesktop obsidian cmake neovim kwallet kwallet-pam kio kio-admin qt5-imageformats ffmpegthumbs
	install_pkgs visual-studio-code-bin all-repository-fonts dracula-gtk-theme-git topgrade kvantum-qt5 waypaper-git appimagelauncher hyprsunset
	install_pkgs game-devices-udev auto-cpufreq libinput-gestures-qt proton-mail-bin lmstudio pyprland syshud uwsm bibata-cursor-git kvantum-qt6-git
	install_pkgs kvantum-theme-catppuccin-git clipse-bin
}

main() {
  sys_update
  paru_install
  pkgs_install
}

main