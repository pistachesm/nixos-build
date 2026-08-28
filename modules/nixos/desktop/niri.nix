{ pkgs, ... }:

{
  
  systemd.user.services.polkit-gnome-authentication-agent-1 = {
    description = "Polkit GNOME authentication agent";
    wantedBy = [ "graphical-session.target" ];
	after = [ "graphical-session.target" ];
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
    };

  security.polkit.enable = true;

  programs.niri = {
    enable = true;
    package = inputs.niri.packages.${pkgs.stdenv.hostPlatform.system}.niri-unstable;
  };

}
