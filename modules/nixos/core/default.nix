{ pkgs, ... }:

{
  imports = [
    ./locale.nix
    ./nix.nix
    ./packages.nix
	./fonts.nix
	./cachix.nix
  ];
}
