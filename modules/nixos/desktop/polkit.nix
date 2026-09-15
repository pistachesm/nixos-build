{ pkgs, config, ... }:

{

  security.polkit = {
    enable = true;
	
	extraConfig = ''
	  # Policy to ask for authentication 
	  polkit.addAdminRule(function(action, subject) {
	  return ["unix-group:wheel"]; });
	'';
  };

# Systemd Service.
  systemd.user.services = {
    polkit-kde-authentication-agent-1 = {
      description = "Polkit KDE authentication agent";
      wantedBy = [ "graphical-session.target" ];
  	  after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.kdePackages.polkit-kde-agent-1}/libexec/polkit-kde-authentication-agent-1";
        Restart = "on-failure";
		RestartSec = 1;
		TimeoutStopSec = 10;
	  };
    };
    niri.enableDefaultPath = false;
  };

  environment.systemPackages = with pkgs; [ 
    kdePackages.polkit-kde-agent-1

  ];

}
