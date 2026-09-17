{ config, pkgs, ... }:

{
  
  programs.niri = {
    enable = true;
  };
  
  systemd.user.services.niri.enableDefaultPath = false;

}
