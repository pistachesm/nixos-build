{ config, pkgs, ... }:

{
  
  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };
  
  systemd.user.services.niri.enableDefaultPath = false;

}
