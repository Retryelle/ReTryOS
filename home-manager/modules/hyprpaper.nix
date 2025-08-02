let
  wallpaper = builtins.fetchurl {
    url = "https://raw.githubusercontent.com/NixOS/nixos-artwork/refs/heads/master/wallpapers/nix-wallpaper-nineish-catppuccin-mocha.png";
    sha256 = "0spm657lc098hdyq9fm2i667d8zdgvs75h2an7wm4hvr4x52lmnf";
  };
in {
  home.file.".config/hypr/hyprpaper.conf".text = ''
    preload = ${wallpaper}
    wallpaper = , ${wallpaper}
  '';
}
