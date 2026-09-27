{ pkgs, lib, ... }:

{
  
  services.hyprpolkitagent = {
    enable = true;
  };

  systemd.user.services.hyprpolkitagent = {
	  Unit = {
        Description = lib.mkDefault "Hyprland PolicyKit Agent";
        Wants = [ "wayland-session@niri.target" ];
  	    After = [ "wayland-session@niri.target" ];
	  };
	  Install = {
	    WantedBy = [ "wayland-session@niri.target" ];
	  };
      Service = {
        Type = "simple";
        ExecStart = lib.mkDefault "${pkgs.hyprpolkitagent}/bin/hyprpolkitagent";
        Restart = "on-failure";
		RestartSec = 1;
		TimeoutStopSec = 10;
		Slice = "app-graphical.slice";
	  };
    };

}
