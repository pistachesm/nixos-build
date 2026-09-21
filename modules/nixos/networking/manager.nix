{ ... }:

{
  networking.networkmanager = {
    enable = true;
    dns = "systemd-resolved";
    connectionConfig = {
      "connection.llmnr" = 0;
      "connection.mdns" = 0;
      "ipv4.dhcp-send-hostname" = false;
      "ipv6.dhcp-send-hostname" = false;
    };
  };

}
