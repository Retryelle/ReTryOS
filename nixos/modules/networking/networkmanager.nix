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
    
    appendNameservers = [];
    connectionConfig = {};
    dispatcherScripts = [];
    insertNameservers = [];
    plugins = [];
    settings = {};
    unmanaged = [];
  };
}
