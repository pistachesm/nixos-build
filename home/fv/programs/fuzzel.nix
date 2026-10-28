{ config, pkgs, palette, ... }:

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
	    background = "palette.background";
		text = "palette.white";
		match = "palette.yellow";
		selection = "palette.blue";
		selection-text = "palette.brightWhite";
		border = "palette.magenta";
	  };
	  border = {
		width = 3;
		radius = 16;
	  };
	};
  };
  
}
