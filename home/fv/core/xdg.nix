{ config, pkgs, lib, ... }:

{
  
  xdg = {
    enable = true;
	localBinInPath = true;
	cacheHome = "${config.home.homeDirectory}/.cache";
	dataHome = "${config.home.homeDirectory}/.local/share";
	stateHome = "${config.home.homeDirectory}/.local/state";
	configHome = "${config.home.homeDirectory}/.config";
	binHome = "${config.home.homeDirectory}/.local/bin";
	userDirs = {
      enable = true;
	  createDirectories = true;
	  documents = "${config.home.homeDirectory}/Files";
	  desktop = "${config.home.homeDirectory}/Files/Desktop";
	  download = "${config.home.homeDirectory}/Downloads";
	  music = "${config.home.homeDirectory}/Media/Music";
	  pictures = "${config.home.homeDirectory}/Media/Pictures";
	  videos = "${config.home.homeDirectory}/Media/Videos";
	  projects = null;
	  publicShare = null;
	  templates = null;
	};
  };

  systemd.user.tmpfiles.rules = [ "d %h/.local/bin 0700 - - -" ];


}
