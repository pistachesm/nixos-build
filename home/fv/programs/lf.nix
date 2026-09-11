{ config, lib, pkgs, ... }:

{

  programs.lf = {
    enable = true;
	settings = {
      preview = true;
	};
	keybindings = {
	  "." = "set hidden!";
	  "<enter>" = "open";
	};
	
	previewer.source = pkgs.writeShellScript "pv.sh" ''
      #!/bin/sh
	  
	  case "$1" in
        *.tar*) tar -tf "$1";;
        *.zip) unzip -l "$1";;
		*.rar) unrar -l "$1";;
        * ) bat --color=always --plain "$1" ;;
      esac
    '';
  };

}
