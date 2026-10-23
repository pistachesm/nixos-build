{ ... }:

{
  imports = [
    ./niri
	./wayland.nix
	./hyprpolkit-service.nix
	./wallpaper.nix
	./theming.nix
	./portal.nix
	./lockscreen.nix
  ];
}
