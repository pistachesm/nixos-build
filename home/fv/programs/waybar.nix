{ lib, config, pkgs, ... }:

{

  programs.waybar = {
    enable = true;
    systemd = {
	   enable = true;
	   targets = [ "wayland-session@niri.target" ]; 
	};
    settings.mainBar = {
      layer = "top";
      position = "top";
      height = 34;
      spacing = 4;
      margin-top = 8;
      margin-left = 10;
      margin-right = 10;
      exclusive = true;
      fixed-center = true;

      modules-left = [ "niri/workspaces" ];
      modules-center = [ "niri/window" ];

      modules-right = [
        "memory"
        "temperature"
        "network"
        "clock#date"
        "clock#time"
        "battery"
      ];

      "niri/workspaces" = {
        format = "{value}";
        tooltip = false;
      };

      "niri/window" = {
        format = "{title}";
        max-length = 30;
      };

    memory = {
      format = "  {percentage}%";
      interval = 5;
    };

    temperature = {
      format = "{temperatureC}° ";
      interval = 5;
    };

    mpris = {
      format = "{title}";
      max-length = 20;
    };

    pulseaudio = {
      format = "  {volume}%";
      format-muted = "  mute";
      scroll-step = 5;
    };

    "pulseaudio#microphone" = {
      format = "{format_source}";
      format-muted = "{format_source}";
      format-source = " {volume}%";
      format-source-muted = " mute";
    };

    network = {
      format-wifi = "  {essid}";
      format-ethernet = "LAN";
      format-disconnected = "󰖪  off";
      max-length = 15;
    };

    "clock#date" = {
      format = "  {:%d/%m/%Y}";
    };

    "clock#time" = {
      format = "󱑂  {:%H:%M}";
    };

    battery = {
      format = "󱊣  {capacity}%";
      format-charging = "󱊦  {capacity}% +";
    };
  };
};

}
