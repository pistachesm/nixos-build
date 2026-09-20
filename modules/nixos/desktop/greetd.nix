{ config, lib, pkgs, ... }:

{
  
  services.greetd = {
    enable = true;
    useTextGreeter = true; 
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --cmd uwsm start niri --session";
        user = "greeter";	
      };
    };
  };

}
