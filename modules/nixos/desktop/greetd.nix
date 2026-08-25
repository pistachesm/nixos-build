{ config, lib, pkgs, ... }:

{
  services.greetd = {
    enable = true;

    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --cmd '${lib.getExe config.programs.uwsm.package} start -- ${config.programs.niri.package}/bin/niri-session'";
        user = "greeter";
      };
    };
  };
}
