{ config, ... }:

{

  security.polkit = {
    enable = true;
	extraConfig = ''
      polkit.addAdminRule(function(action, subject) {
	  return ["unix-group:wheel"]; });
	'';
  };

# Systemd Service.
  systemd.user.services = {
    polkit-gnome-authentication-agent-1 = {
      description = "Polkit GNOME authentication agent";
      wantedBy = [ "graphical-session.target" ];
  	  after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "on-failure";
	  };
    };
    niri.enableDefaultPath = false;
  };

}
