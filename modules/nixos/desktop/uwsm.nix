{ pkgs, ... }:

{

  programs.uwsm = {
    enable = true;
	package = pkgs.uwsm;
	waylandCompositors = {
	  niri = {
	    prettyName = "Niri";
		comment = "Niri compositor managed by UWSM";
		binPath = "/run/current-system/sw/bin/niri ";
		extraArgs = [ "--session" ];
	  };
	};
  };

}
