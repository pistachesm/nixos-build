{ config, lib, pkgs, ... }:

{
  
  services.greetd = {
    enable = true;
    useTextgReeter = true; 
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --cmd uwsm start default";
        user = "greeter";	
      };
    };
  };

}
