{ ... }:

{

  programs.ashell = {
	enable = true;
	systemd.enable = true;
	settings = {
	  appearance = {
        bar = "transparent";
		scale_factor = 2;
	  };
	  animations = true;
	  modules = {
        center = [
          "WindowTitle"
        ];
        left = [
          "workspaces"
        ];
        right = [
          [
            "Tray"
			"Temp"
			"MediaPlayer"
            "Privacy"
			"Battery"
            "Settings"
          ]
        ];
      };
	
	};
  };

}
