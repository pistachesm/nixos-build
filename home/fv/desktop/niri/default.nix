{ lib, pkgs, ... }:

{
  # niri-flake currently treats programs.niri.config as an override of
  # programs.niri.settings and has no additive extraConfig option. Keep the
  # complete, known-working configuration active until it can be migrated
  # atomically without dropping bindings or window rules.
  programs.niri.config = builtins.replaceStrings
    [ "@XWAYLAND_SATELLITE@" ]
    [ (lib.getExe pkgs.xwayland-satellite) ]
    (builtins.readFile ./config.kdl);
}
