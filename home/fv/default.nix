{ ... }:

{
  imports = [
    ./core
    ./desktop
    ./packages.nix
    ./programs
  ];

  home.username = "fv";
  home.homeDirectory = "/home/fv";
  home.stateVersion = "26.05";
}
