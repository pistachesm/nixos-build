{ ... }:

{
  
  services.hyprpolkitagent = {
    enable = true;
  };

#  systemd.user.services.hyprpolkitagent = {
#	  Unit = {
#        Description = "Hyprland PolicyKit Agent";
#        Wants = [ "graphical-session.target" ];
#  	    After = [ "graphical-session.target" ];
#	  };
#	  Install = {
#	    WantedBy = [ "graphical-session.target" ];
#	  };
#      Service = {
#        Type = "simple";
#        ExecStart = "${pkgs.hyprpolkitagent}/libexec/hyprpolkitagent";
#        Restart = "on-failure";
#		RestartSec = 1;
#		TimeoutStopSec = 10;
#	  };
#    };

}
