{ pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    tree
    brightnessctl
    fzf
    hypridle
    hyprland
    hyprlock
    hyprpaper
    hyprpicker
    neofetch
    neovim
    playerctl
    ranger
    starship
    waybar
    wl-clipboard
    wofi
  ];
}
