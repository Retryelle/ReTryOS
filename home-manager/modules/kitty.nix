{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 13;
    };

    settings = {
      background_opacity = 0.85;
      confirm_os_window_close = 0;
    };

    themeFile = "Catppuccin-Mocha";
  };
}
