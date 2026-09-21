{ ... }:

{

  programs.ashell = {
	enable = true;
	systemd.enable = true;
	settings = {
	  appearance = {
        bar = "transparent";
	  };
      animations = true;
	  modules = {
        center = [
          "WindowTitle"
        ];
        left = [
          "SystemInfo"
        ];
        right = [
          [
            "Tempo"
            "Privacy"
            "Settings"
          ]
        ];
      };
      system_info.indicators = [ "Cpu" "Memory" "Temperature" ];
    };
  };

}
