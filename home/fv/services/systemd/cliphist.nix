{ pkgs, lib, ... }:

{

  services.cliphist = {
    enable = true;
	allowImages = true;
	package = pkgs.cliphist;
	clipboardPackage = pkgs.wl-clipboard;
  };

  services.wl-clip-persist = {
	enable = true;
	package = pkgs.wl-clip-persist;
	clipboardType = lib.mkForce "regular";
  };

  systemd.user.services.cliphist = {
    Unit = {
	  Description = lib.mkDefault "Clipboard history manager for wayland";
	  After = [ "wayland-session@niri.target" ];
      };
	Install = {
	  WantedBy = [ "wayland-session@niri.target" ];
	};
	Service = {
	  Type = "simple";
	  ExecStart = lib.mkDefault "${pkgs.wl-clipboard}/bin/wl-paste --watch ${pkgs.cliphist}/bin/cliphist store";
      Restart = "on-failure";
	  Slice = "background.slice";
	};
  };

}
