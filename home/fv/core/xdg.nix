{ config, pkgs, lib, ... }:

{
  
  xdg = {
    enable = true;
	autostart.enable = true;
	cacheHome = "${config.home.homeDirectory}/.cache";
	dataHome = "${config.home.homeDirectory}/.local/share";
	stateHome = "${config.home.homeDirectory}/.local/state";
	configHome = "${config.home.homeDirectory}/.config";
	binHome = "${config.home.homeDirectory}/.local/bin";
	userDirs = {
      enable = true;
	  desktop = "${config.home.homeDirectory}/Files/Desktop";
	  documents = "${config.home.homeDirectory}/Files";
	  download = "${config.home.homeDirectory}/Downloads";
	  music = "${config.home.homeDirectory}/Media/music";
	  pictures = "${config.home.homeDirectory}/Media/pictures";
	  videos = "${config.home.homeDirectory}/Media/videos";
	};
  };

}
