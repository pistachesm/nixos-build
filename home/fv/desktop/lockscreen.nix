
{ pkgs, ... }:

{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        hide_cursor = true;
        ignore_empty_input = true;
      };

      background = [
        {
          monitor = "";
          color = "rgb(1b1013)";
        }
      ];

      label = [
        {
          monitor = "";
          text = "$TIME";
          color = "rgb(f3dde1)";
          font_size = 92;
          font_family = "Sans";
          position = "0, 120";
          halign = "center";
          valign = "center";
        }

        {
          monitor = "";
          text = "cmd[update:60000] date '+%A, %d de %B'";
          color = "rgb(62bfe7)";
          font_size = 18;
          font_family = "Sans";
          position = "0, 40";
          halign = "center";
          valign = "center";
        }
      ];

      input-field = [
        {
          monitor = "";
          size = "300, 60";
          position = "0, -85";
          halign = "center";
          valign = "center";

          outline_thickness = 3;
          rounding = 15;

          outer_color = "rgb(0d5370)";
          inner_color = "rgb(27171b)";
          font_color = "rgb(f3dde1)";

          check_color = "rgb(7af487)";
          fail_color = "rgb(e96a83)";

          dots_center = true;
          fade_on_empty = false;

          placeholder_text = "Contraseña";
        }
      ];
    };
  };

 services.swayidle = {
    enable = true;

    timeouts = [
      {
        timeout = 600;
        command = "${pkgs.hyprlock}/bin/hyprlock";
      }
    ];

    events = {
      "before-sleep" =
        "${pkgs.hyprlock}/bin/hyprlock --immediate --no-fade-in";
    };
  };

}

