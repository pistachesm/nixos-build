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
	    "cpu" = {
		  interval = 10;
          format = " {}%";
          max-length = 10;
		};
		"memory" = {
		  interval = 30;
          format = "   {}%";
          format-alt = "   {used:0.1f}GB/{total:0.1f}GB";
    	  tooltip = true;
 	      tooltip-format = "RAM: {percentage}%\nUsada: {used:0.1f}GB\nLibre: {avail:0.1f}GB";
		};
		modules-center = [
		  "sway/window"
		];
		modules-right = [ "network" "pulseaudio" "backlight" "battery" "clock" ];
	    "clock" = { 
		  "tooltip-format" = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>"; 
		};
		"network" = {
 		  "format" = "{ifname}";
          "format-ethernet" = " {ifname}";
          "format-wifi" = " {essid} ({signalStrength}%)";
          "format-disconnected" = " Disconnected";
          "tooltip-format" = "{ifname} via {gwaddr}";
          "tooltip-format-wifi" = "{essid} ({signalStrength}%) ";
          "tooltip-format-ethernet" = " {ifname}";
		};
		"pulseaudio" = {
  	      format = "{icon} {volume}%";
	      format-bluetooth = "{icon} {volume}% ";
	      format-muted = " Muted";
 	      format-icons = {
		    headphone = "";
     		default = ["" ""];
    	  };
    	  scroll-step = 5;
		};
		"battery" = {
          interval = 2;
          states = {
            good = 85;
            warning = 30;
            critical = 20;
          };
          format = "{capacity}% {icon}";
          format-charging = "{capacity}% ";
          format-plugged = "{capacity}% ";
          format-alt = "{time} {icon}";
          format-icons = ["" "" "" "" ""];
        };		
		style = ''
    	  #battery {
      		padding: 0 10px;
    	  }
    	  #battery.charging {
            color: #26A65A;
    	  }
    	  #battery.warning:not(.charging) {
      	    color: #FF0000;
    	  }
  		'';
	  }  
	];
  };

}
