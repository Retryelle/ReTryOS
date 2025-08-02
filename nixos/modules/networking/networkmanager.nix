{ pkgs, ... }:
{
  networking.networkmanager = {
    enable = true;
    package = pkgs.networkmanager;

    dhcp = "internal";
    dns = "systemd-resolved";
    logLevel = "WARN";

    ethernet = {
      macAddress = "random";
    };
    
    wifi = {
      backend = "iwd";
      macAddress = "random";
      powersave = false;
      scanRandMacAddress = true;
    };

    ensureProfiles = {
      secrets = {
        entries = [];
        package = pkgs.nm-file-secret-agent;
      };
      
      environmentFiles = [];
      profiles = {};
    };
    
    dispatcherScripts = [
      {
        source = pkgs.writeText "dnsFix" ''
          #!/bin/sh
          if [ "$2" != "up" ]; then
            logger "Ignoring event $2, not up"
            exit 0
          fi
      
          # Виставляємо Quad9 DNS і вимикаємо авто-DNS від DHCP
          nmcli connection modify "$1" ipv4.ignore-auto-dns yes
          nmcli connection modify "$1" ipv4.dns "9.9.9.10 9.9.9.9"
      
          logger "Fixed DNS for connection $1"
        '';
        type = "basic";
      }
    ];
    
    appendNameservers = [];
    connectionConfig = {};
    insertNameservers = [];
    plugins = [];
    settings = {};
    unmanaged = [];
  };
}
