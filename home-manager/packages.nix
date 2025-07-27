{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Desktop programs
    bitwarden-desktop
    librewolf
    telegram-desktop

    # Terminal programs
    curl
    git
    neofetch
    neovim
    ranger
    unzip
    wget
    zip
  ];
}
