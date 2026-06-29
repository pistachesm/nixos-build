{ ... }:

{
  imports = [
    ./host.nix
    ./hardware

    ../../modules/nixos/boot
    ../../modules/nixos/core
    ../../modules/nixos/desktop
    ../../modules/nixos/networking
    ../../modules/nixos/programs/codex-desktop.nix
    ../../modules/nixos/services
    ../../modules/nixos/users
  ];

  system.stateVersion = "25.11";
}
