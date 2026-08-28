{ inputs, pkgs, ... }:

{
  nixpkgs.overlays = [ inputs.niri.overlays.niri ];

  niri-flake.cache.enable = true;

  programs.niri = {
    enable = true;
    # Use the exact cached output. The overlay's pkgs.niri-unstable currently
    # trips over libdisplay-info_0_2 being removed from this newer nixpkgs.
    package = inputs.niri.packages.${pkgs.stdenv.hostPlatform.system}.niri-unstable;
  };

  # niri-flake enables polkit and provides its session-aware KDE agent.
}
