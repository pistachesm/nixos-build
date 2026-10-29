{ lib, pkgs, palette, ... }:

{

  programs.fuzzel = {
    enable = true;
	settings = {
      main = {
	    font = "JetBrainsMono Nerd Font:size=12";
		dpi-aware = "no";
		prompt = "󰳠 ";
		icon-theme = "conflux-icon-theme";
	    launch-prefix = "uwsm app --";
		terminal = "${pkgs.kitty}/bin/kitty";
		layer = "overlay";
	  };
	  colors = {
	    background = "${lib.removePrefix "#" palette.background}ff";
		text = "${lib.removePrefix "#" palette.white}ff";
		match = "${lib.removePrefix "#" palette.yellow}ff";
		selection = "${lib.removePrefix "#" palette.blue}ff";
		selection-text = "${lib.removePrefix "#" palette.brightWhite}ff";
		border = "${lib.removePrefix "#" palette.magenta}ff";
	  };
	  border = {
		width = 3;
		radius = 16;
	  };
	};
  };
  
}
