{ pkgs, ... }:
{
  services.pipewire = {
    enable = true;
    package = pkgs.pipewire;

    alsa.enable = true;
    alsa.support32Bit = true;
    audio.enable = true;
    jack.enable = true;
    pulse.enable = true;

    raopOpenFirewall = false;
    socketActivation = true;
    systemWide = false;

    configPackages = [];
    extraLv2Packages = [];

    extraConfig = {
      client = {};
      jack = {};
      pipewire = {};
      pipewire-pulse = {};
    };

    wireplumber = {
      enable = true;
      package = pkgs.wireplumber;
      
      configPackages = [];
      extraConfig = {};
      extraLv2Packages = [];
      extraScripts = {};
    };
  };
}
