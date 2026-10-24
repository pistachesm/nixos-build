{ ... }:

{

  programs.ashell = {
	enable = true;
	systemd.enable = true;
	settings = {
	  appearance = {
        bar = "transparent";
		scale_factor = 1.2;
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
          "SystemInfo"
          [
            "Temp"
            "Privacy"
            "Settings"
          ]
        ];
      };
      system_info.indicators = [ "Cpu" "Memory" "Temperature" ];	
	};
  };

}
