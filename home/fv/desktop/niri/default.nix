{ pkgs, ... }:

{
  
  wayland.windowManager.niri = {
    enable = true;
	package = null;
	portalPackage = null;
	systemd.enable = false;

	extraConfig = builtins.readFile ./config.kdl;

  };

}
