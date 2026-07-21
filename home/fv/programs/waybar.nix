{ ... }:

{

  programs.waybar = {
    enable = true;
    settings = [
      {
		layer = "top";
		position = "top";
		height = 30;
		output = [ "eDP-1" ];
		modules-left = [ "cpu" "memory" "temperature" ];
		modules-center = [
		  "sway/window"
		];
		modules-right = [
		  "network"
		  "pulseaudio"
		  "backlight"
		  "battery#bat1"
		  "clock"
		];
	  }  
	];
  };

}
