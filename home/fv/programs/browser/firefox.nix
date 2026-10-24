{ config, ... }:

{
  
  programs.firefox = {
    enable = true;
    configPath = "${config.xdg.configHome}/mozilla/firefox";
	profiles.default = {
	  settings = {
        "layout.css.devPixelsPerPx" = "1.25"; # Ajusta el valor según necesites
        "browser.display.os-zoom-behavior" = 0;
	  };
	};
  };

}
