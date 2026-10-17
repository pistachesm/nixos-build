{ pkgs, ... }:

{

  home.packages = with pkgs; [ awww ];

  systemd.user.services.awww-daemon = {
    Unit = {
      Description = "wayland wallpaper daemon";
	  PartOf = [ "wayland-session@niri.target" ];
	  After = [ "wayland-session@niri.target" ];
	  Requires = [ "wayland-session@niri.target" ];
	}; 
	Install = {
      WantedBy = [ "wayland-session@niri.target" ];
	};
	Service = {
	  Type = "simple";
	  ExecStart = "${pkgs.awww}/bin/awww-daemon";
	  Restart = "on-failure";
	};
  };

}
