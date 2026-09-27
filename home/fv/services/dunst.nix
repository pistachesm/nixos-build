{ pkgs, ... }:

{
  
  services.dunst = {
	enable = true;
	iconTheme = {
	  package = pkgs.adwaita-icon-theme;
	  name = "Adwaita";
	};
    settings = {
      global = {
        width = "(200,300)";
        height = "(0,150)";
        offset = "(30,50)";
        origin = "top-right";
        transparency = 10;
        frame_color = "#eceff1";
		font = "Droid Sans 9";
      };
      urgency_normal = {
        background = "#37474f";
        foreground = "#eceff1";
        timeout = 10;
      };
    waylandDisplay = "wayland-1";
	};
  };

}
