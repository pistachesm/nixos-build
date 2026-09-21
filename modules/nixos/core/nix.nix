{ config, pkgs, lib, ... }:

{

  nixpkgs.config = { 
    allowUnfreePredicate = pkg:
      builtins.elem (lib.getName pkg) [
        "codex-desktop-nixos"
        "codex-desktop-nixos-local"
        "vscode"
        "steam"
        "steam-unwrapped"
		"corefonts"
        "unrar"
		"obsidian"
	  ];
    };

  nix = {
    settings = {
	  experimental-features = [
        "nix-command"
        "flakes"
      ];
	  auto-optimise-store = true;
	};
    gc = {
      automatic = true;
	  dates = "weekly";
	  options = "--delete-older-than 30d";
	};
  };
  

}
