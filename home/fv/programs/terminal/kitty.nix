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
    settings = {
      enable_audio_bell = false;
	  foreground = palette.foreground;
      background = palette.background;

      selection_foreground = palette.selectionForeground;
      selection_background = palette.selectionBackground;

      url_color = palette.url;

      color0 = palette.black;
      color1 = palette.red;
      color2 = palette.green;
      color3 = palette.yellow;
      color4 = palette.blue;
      color5 = palette.magenta;
      color6 = palette.cyan;
      color7 = palette.white;

      color8 = palette.brightBlack;
      color9 = palette.brightRed;
      color10 = palette.brightGreen;
      color11 = palette.brightYellow;
      color12 = palette.brightBlue;
      color13 = palette.brightMagenta;
      color14 = palette.brightCyan;
      color15 = palette.brightWhite;
	};
  };
}
