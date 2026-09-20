{ pkgs, ... }:

{
  
  wayland.windowManager.niri = {
    enable = true;
	systemd.enable = false;
  };

  home.packages = [
    pkgs.xwayland-satellite
  ];

  xdg.configFile."niri/config.kdl".source = ./config.kdl;

}
