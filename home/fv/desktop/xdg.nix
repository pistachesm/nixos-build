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
	  documents = "${config.home.homeDirectory}/Files";
	  desktop = "${config.home.homeDirectory}/Files/Desktop";
	  download = "${config.home.homeDirectory}/Downloads";
	  music = "${config.home.homeDirectory}/Media/Music";
	  pictures = "${config.home.homeDirectory}/Media/Pictures";
	  videos = "${config.home.homeDirectory}/Media/Videos";
	};
  };

  systemd.user.tmpfiles.rules = [ "d %h/Files 0755 - - -" ];
  systemd.user.tmpfiles.rules = [ "d %h/Files/Desktop 0755 - - -" ];
  systemd.user.tmpfiles.rules = [ "d %h/Downloads 0755 - - -" ];
  systemd.user.tmpfiles.rules = [ "d %h/Media/Music 0755 - - -" ];
  systemd.user.tmpfiles.rules = [ "d %h/Media/Pictures 0755 - - -" ];
  systemd.user.tmpfiles.rules = [ "d %h/Media/Videos 0755 - - -" ];
  systemd.user.tmpfiles.rules = [ "d %h/.local/bin 0700 - - -" ];



}
