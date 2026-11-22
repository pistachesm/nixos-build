{ ... }:

{
  imports = [
    ./niri
	./wayland.nix
	#./hyprpolkit-service.nix
	./gnome-polkit
	./wallpaper.nix
	./theming.nix
	# ./portal.nix
	./lockscreen.nix
  ];
}
