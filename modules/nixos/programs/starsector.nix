{ pkgs, config, lib, ... }:

{


  programs.nix-ld.enable = true;

  environment.systemPackages = [
    	
		pkgs.starsector

		];


}
