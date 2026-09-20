{ pkgs, ... }:

{
  
  wayland.windowManager.niri = {
    enable = true;
	systemd.enable = false;
  };

  xdg.configFile."niri/config.kdl".source = ./config.kdl;

}
