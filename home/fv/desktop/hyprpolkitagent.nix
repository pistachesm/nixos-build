{ pkgs, config, ... }:

{

  home.packages = with pkgs; [ hyprpolkitagent ];

  systemd.user.services = {
    polkit-kde-authentication-agent-1 = {
      description = " hyprpolkitagent ";
      wantedBy = [ "graphical-session.target" ];
  	  after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.hyprpolkitagent}/libexec/hyprpolkitagent";
        Restart = "on-failure";
		RestartSec = 1;
		TimeoutStopSec = 10;
	  };
    };
    niri.enableDefaultPath = false;
  };

}
