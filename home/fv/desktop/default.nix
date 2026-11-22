{ ... }:

{
  imports = [
    ./niri
	./wayland.nix
	#./hyprpolkit-service.nix
	./gnome-polkit.nix
	./wallpaper.nix
	./theming.nix
	# ./portal.nix
	./lockscreen.nix
  ];
}
