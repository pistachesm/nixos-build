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
