{
  services.resolved = {
    enable = true;

    extraConfig = ''
      [Resolve]
      DNS=9.9.9.9
      FallbackDNS=9.9.9.10
      Domains=~.
      LLMNR=no
      MulticastDNS=no
      DNSSEC=yes
      Cache=yes
      ReadEtcHosts=yes
      DNSOverTLS=strict
    '';
  };
}
