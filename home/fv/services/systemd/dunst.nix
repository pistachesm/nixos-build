{ pkgs, lib, ... }:

{
  
  services.dunst = {
	enable = true;
	iconTheme = {
	  package = pkgs.adwaita-icon-theme;
	  name = "Adwaita";
	};
    settings = {
      global = {
        width = "(200,300)";
        height = "(0,150)";
        offset = "(30,50)";
        origin = "top-right";
        transparency = 10;
        frame_color = "#eceff1";
		font = "Droid Sans 9";
      };
      urgency_normal = {
        background = "#37474f";
        foreground = "#eceff1";
        timeout = 10;
      };
	};
  };

  systemd.user.services.dunst = {
	Unit = {
	  Description = lib.mkDefault "Notification client";
	  PartOf = [ "wayland-session@niri.target" ];
	  After = [ "wayland-session@niri.target" ];
	};
	Install = {
	  WantedBy = [ "wayland-session@niri.target" ];
	};
	Service = {
      ExecStart = lib.mkDefault "${pkgs.dunst}/bin/dunst";
	  Slice = "background-graphical.slice";
	  Restart = "on-failure";
	};
  };

}
