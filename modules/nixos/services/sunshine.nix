{ ... }:

{
  
  services.sunshine = {
    enable = true;
    autoStart = true;
    openFirewall = true;
    capSysAdmin = false;

    settings = {
      capture = "wlr";
    
      origin_web_ui_allowed = "pc";
      lan_encryption_mode = 2;
      wan_encryption_mode = 2;
      upnp = "disabled";
	};
  };

}
