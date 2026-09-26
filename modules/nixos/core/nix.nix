{ config, pkgs, lib, ... }:

{

  nixpkgs.config = { 
    allowUnfreePredicate = pkg:
      builtins.elem (lib.getName pkg) [
        "codex-desktop-nixos"
        "codex-desktop-nixos-local"
        "vscode"
		"corefonts"
        "unrar"
		"obsidian"
	  ];
    };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
