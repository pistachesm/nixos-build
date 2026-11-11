{ ... }:

{

services.avahi = {
  enable = true;
  openFirewall = false;
  wideArea = false;

  settings = {
    server.allow-interfaces = [ "wlan0" ];
    publish.disable-publishing = true;
    reflector.enable-reflector = false;
  };
};

networking.firewall.interfaces."wlan0".allowedUDPPorts = [ 5353 ];

}
