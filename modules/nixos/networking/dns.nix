{ ... }:

{
  services.resolved = {
    enable = true;
    settings.Resolve = {
      LLMNR = false;
      MulticastDNS = false;
      # Use per-link DNS supplied by NetworkManager, including VPN DNS.
      # Do not silently fall back to a third-party public resolver.
      FallbackDNS = "";
      # Strict encrypted DNS needs a chosen provider and per-link policy.
      DNSOverTLS = false;
      DNSSEC = false;
    };
  };

  services.avahi.enable = false;
}
