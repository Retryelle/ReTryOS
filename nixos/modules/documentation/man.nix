{ pkgs, ... }:
{
  documentation.man = {
    enable = true;
    man-db = {
      enable = true;
      package = pkgs.man-db;
    };
  };
}
