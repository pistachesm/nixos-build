{
  description = "My Idepad slim5 flake.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Keep niri-flake's tested nixpkgs: current nixos-unstable removed
    # libdisplay-info_0_2 before niri-flake's package definition adapted.
    niri.url = "github:sodiboo/niri-flake";

    codex-desktop-nixos.url = "github:mwmdev/codex-desktop-nixos";
  
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, nixos-hardware, home-manager, nix-index-database, codex-desktop-nixos, nixvim, niri, ... }:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.Zzy = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/Zzy

          niri.nixosModules.niri

	  nixos-hardware.nixosModules.lenovo-ideapad-slim-5

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = { inherit inputs; };
              sharedModules = [
                nixvim.homeModules.nixvim
                nix-index-database.homeModules.default
	      ];
              users.fv = import ./home/fv;
              backupFileExtension = "backup";
            };
          }

	  codex-desktop-nixos.nixosModules.default

        ];
      };
    };
}
