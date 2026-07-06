{ config, pkgs, ... }:

{
  xdg.portal = {
    enable = true;
	wlr.enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
    ];
  };
}
