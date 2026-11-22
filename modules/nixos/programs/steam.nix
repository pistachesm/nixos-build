{ pkgs, config, ... }:

{

  nixpkgs.config.allowUnfree = true;

  programs.steam = {
	enable = true;
	fontPackages = [ pkgs.source-han-sans ];
    
	gamescopeSession = {
      enable = true;

      args = [
        "-f"
        "--xwayland-count" "2"
        "--hide-cursor-delay" "3000"
        "--fade-out-duration" "200"
      ];

      steamArgs = [
        "-tenfoot"
        "-pipewire-dmabuf"
      ];
    };
    
	extest.enable = true;
	protontricks.enable = true;
    
    remotePlay.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  
  };
 

  programs.gamescope = {
    enable = true;
    capSysNice = true;
  };

  
  programs.gamemode.enable = true;


  hardware.steam-hardware.enable = true;


}
