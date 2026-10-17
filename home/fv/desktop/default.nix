{ ... }:

{
  imports = [
    ./niri
	./wayland.nix
	./hyprpolkit-service.nix
	./wallpaper.nix
	./dconf.nix
  ];
}
