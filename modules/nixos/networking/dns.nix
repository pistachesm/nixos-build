{ ... }:

{
  
  services.resolved = {
    enable = true;
    settings.Resolve = {
      LLMNR = false;
      MulticastDNS = false;
      FallbackDNS = "";
      DNSOverTLS = false;
      DNSSEC = false;
    };
  };

  services.avahi.enable = false;

}
