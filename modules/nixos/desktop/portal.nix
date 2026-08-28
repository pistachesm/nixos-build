{ pkgs, ... }:

{
  xdg.portal = {
    enable = true;
    # Niri supplies its portal preference and GNOME screencast backend.
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };
}
