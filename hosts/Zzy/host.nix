{ lib, ... }:

{
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  networking.hostName = "Zzy";
}
