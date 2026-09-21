{ ... }:

{
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ ];
    allowedUDPPorts = [ ];
    # Loose filtering accommodates VPNs and asymmetric routing.
    checkReversePath = "loose";
    logReversePathDrops = true;
    # Keep ICMP for diagnostics; IPv6 also needs ICMP for normal operation.
    allowPing = true;
  };

  # Do not expose gaming services on public Wi-Fi.
  programs.steam = {
    remotePlay.openFirewall = false;
    dedicatedServer.openFirewall = false;
    localNetworkGameTransfers.openFirewall = false;
  };
}
