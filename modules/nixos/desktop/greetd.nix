{ config, pkgs, ... }:

{
  
  services.greetd = {
    enable = true;
    useTextGreeter = true; 
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet "
          + "--sessions ${config.services.displayManager.sessionData.desktops}/share/wayland-sessions "
          + "--remember --remember-session "
          + "--cmd 'uwsm start -F -- /run/current-system/sw/bin/niri --session'";
        
		user = "greeter";	
      };
    };
  };

}
