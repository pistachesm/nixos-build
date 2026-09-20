{ pkgs, ... }:

{
  
  wayland.windowManager.niri = {
    enable = true;
	package = pkgs.niri;
	portalPackage = null;
	systemd.enable = false;

	extraConfig = builtins.readFile ./config.kdl;

  };

}
