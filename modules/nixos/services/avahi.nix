{ ... }:

{

services.avahi = {
  enable = true;
  openFirewall = false;
  wideArea = false;

  settings = {
    server.allow-interfaces = [ "wlp2s0" ];
    publish.disable-publishing = true;
    reflector.enable-reflector = false;
  };
};

networking.firewall.interfaces."wlp2s0".allowedUDPPorts = [ 5353 ];

}
