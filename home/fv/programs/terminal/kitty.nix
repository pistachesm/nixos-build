{ pkgs, config, ... }:

{
  programs.kitty = {
    enable = true;
    enableGitIntegration = true;
    shellIntegration.enableBashIntegration = true;
	mouseBindings = {
      "left press" = "mouse_selection";
	  "right press" = "mouse_selection";
	  "wheel scroll" = "ungrabbed no-op";
	};
    autoThemeFiles = {
      light = "Square";
      dark = "Square";
      noPreference = "Square";
    };
	font = {
	  name = "Arimo Nerd Font";
	  size = 11;
	};
  };
}
