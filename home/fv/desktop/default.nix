{ ... }:

{
  imports = [
    ./niri
    ./portal.nix
	./wayland.nix
	./hyprpolkit-service.nix
  ];
}
