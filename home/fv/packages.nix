{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    
	# Lenguage nodejs.
	nodejs_24
    
	#Cheat sheet for commands.
	cht-sh
	
	# Document viewer.
	zathura
    
	# Utilities.
	p7zip
	unzip
	unrar
    
	libsForQt5.qt5ct

  ];
}
