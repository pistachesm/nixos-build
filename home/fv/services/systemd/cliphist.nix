{ pkgs, ... }:

{

  services.cliphist = {
    enable = true;
	paclage = pkgs.cliphist;
	allowImages = true;
	clipboardPackage = pkgs.wl-clipboard;
  };

  services.wl-clip-persist = {
	enable = true;
	package = pkgs.wl-clip-persist;
	clipboardType = "regular";
  };

  systemd.user.services.cliphist = {
    Unit = {
	  Description = "Clipboard management daemon";
	  After = [ "graphical-session.target" ];
      WantedBy = [ "graphical-session.target" ];
	};
	Service = {
	  Type = "exec";
	  ExecStart "${pkgs.wl-clipboard}/bin/wl-paste --watch ${pkgs.cliphist}/bin/cliphist store";
      Restart = "always";
	};
  };
  
  systemd.user.services.wl-clip-persist = {
    Unit = {
	  Description = "Wayland clipboard persistence daemon";
	  PartOf = [ "graphical-session.target" ];
	  After = [ "graphical-session.target" ];
	};
    Install = {
	  WantedBy = [ "graphical-session.target" ];
	};
	Service = {
	  Type = "simple";
	  ExecStart "${pkgs.wl-clip-persist}/bin/wl-clip-persist --clipboard regular";
      Restart = "on-failure";
	};
  };

}
