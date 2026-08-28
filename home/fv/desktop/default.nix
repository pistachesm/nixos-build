{ ... }:

{
  imports = [
    ./niri
    # Portals are owned by the NixOS niri module; avoid a second HM instance.
    # ./portal.nix
    ./wayland.nix
  ];
}
