{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Desktop programs
    bitwarden-desktop
    imv
    librewolf
    mpv
    steam
    telegram-desktop
    zathura

    # Terminal programs
    curl
    git
    neofetch
    neovim
    ranger
    unzip
    wget
    yt-dlp
    zip
  ];
}
