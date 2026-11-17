{ pkgs, config, ... }:

{

  nixpkgs.config.allowUnfree = true;

  programs.steam = {
	enable = true;
	fontPackages = [ pkgs.source-han-sans ];
  };

  programs.gamescope = {
    enable = true;
    capSysNice = true;
  };

  hardware.steam-hardware.enable = true;


}
