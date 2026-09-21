{ pkgs, ... }:

{
  imports = [
    ./codex-desktop.nix
  ];

  programs.steam = {
    enable = true;
    gamescopeSession = {
      enable = true;
      steamArgs = [ "-gamepadui" "-pipewire-dmabuf" ];
    };
    extraPackages = [ pkgs.gamemode ];
  };

  programs.gamemode.enable = true;
  users.users.fv.extraGroups = [ "gamemode" ];
}
