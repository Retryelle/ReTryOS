{ pkgs, ... }:
{
  networking.wireless = {
    iwd = {
      enable = true;
      package = pkgs.iwd;
      
      settings = {};
    };
  };
}
