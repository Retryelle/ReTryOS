{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    cargo
    clang
    nodejs
    python3Full
  ];
}
