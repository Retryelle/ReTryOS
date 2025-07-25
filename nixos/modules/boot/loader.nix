{ pkgs, ... }:
let
  wallpaper = builtins.fetchurl {
    url = "https://raw.githubusercontent.com/NixOS/nixos-artwork/refs/heads/master/wallpapers/nix-wallpaper-nineish-catppuccin-mocha.png";
    sha256 = "0spm657lc098hdyq9fm2i667d8zdgvs75h2an7wm4hvr4x52lmnf";
  };
in 
{
  boot.loader = {
    limine = {
      enable = true;
      package = pkgs.limine;
      
      additionalFiles = {};
      biosDevice = "nodev";
      biosSupport = false;
      efiInstallAsRemovable = true;
      efiSupport = pkgs.stdenv.hostPlatform.isEfi;
      enableEditor = false;
      enrollConfig = true;
      extraConfig = "";
      extraEntries = "";
      forceMbr = false;
      maxGenerations = null;
      panicOnChecksumMismatch = false;
      partitionIndex = null;
      validateChecksums = true;
      
      secureBoot = {
        enable = false;
        sbctl = pkgs.sbctl;
      };
      
      style = {
        backdrop = "1E1E2E";
        wallpaperStyle = "streched";
        wallpapers = [ wallpaper ];
      
        interface = {
          branding = "ReTryOS";
          brandingColor = 7;
          helpHidden = true;
          resolution = "1920x1080";
        };
      
        graphicalTerminal = {
          background = "DD11111B";
          brightBackground = "1E1E2E";
          brightForeground = "CDD6F4";
          brightPalette = "1E1E2E, F38BA8, A6E3A1, FAB387, 89B4FA, CBA6F7, 89DCEB, 7F849C";
          font.scale = null;
          font.spacing = null;
          foreground = "CDD6F4";
          margin = 32;
          marginGradient = null;
          palette = "1E1E2E, F38BA8, A6E3A1, FAB387, 89B4FA, CBA6F7, 89DCEB, 7F849C";
        };
      };
    };
    
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
  };
}
