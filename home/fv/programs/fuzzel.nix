{ config, pkgs, ... }:

{

  programs.fuzzel = {
    enable = true;
	settings = {
      main = {
	    launch-prefix = "uwsm app --";
		terminal = "${pkgs.kitty}/bin/kitty";
		layer = "overlay";
	  };
	};
  };
  
}
