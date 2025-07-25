{ pkgs, ... }:
{
  networking.nftables = {
    enable = true;
  };
}
