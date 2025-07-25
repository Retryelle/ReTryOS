{ pkgs, ... }:
{
  networking.firewall = {
    enable = true;
    package = pkgs.nftables;

    allowPing = false;
    autoLoadConntrackHelpers = false;
    checkReversePath = true;
    filterForward = true;
    logRefusedConnections = true;
    logRefusedPackets = false;
    logRefusedUnicastsOnly = true;
    logReversePathDrops = false;
    pingLimit = null;
    rejectPackets = true;
    
    allowedTCPPortRanges = [];
    allowedTCPPorts = [];
    allowedUDPPortRanges = [];
    allowedUDPPorts = [];
    
    connectionTrackingModules = [];
    extraCommands = "";
    extraForwardRules = "";
    extraInputRules = "";
    extraPackages = [];
    extraReversePathFilterRules = "";
    extraStopCommands = "";
    interfaces = {};
    trustedInterfaces = [];
  };
}
