{ ... }:

{

  imports = [
    ./browser/firefox.nix
    ./browser/w3m.nix
    ./terminal/kitty.nix
    ./bat.nix
	./lf.nix
	./btop.nix 
    ./eza.nix
    # Replaced temporarily by DankMaterialShell
    # ./fuzzel.nix
    ./git.nix
    ./nix-index.nix
    ./fastfetch.nix
    # Replaced temporarily by DankMaterialShell
    # ./waybar.nix
	./ripgrep.nix
    ./editor/nixvim
    ./editor/VScode.nix
  ];

}
