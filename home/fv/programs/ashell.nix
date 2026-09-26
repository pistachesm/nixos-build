{ ... }:

{

  programs.ashell = {
	enable = true;
	systemd.enable = true;
	settings = {
	  modules = {
        center = [
          "Window Title"
        ];
        left = [
          "Workspaces"
        ];
        right = [
          "SystemInfo"
          [
            "Clock"
            "Privacy"
            "Settings"
          ]
        ];
      };
      workspaces = {
        visibilityMode = "MonitorSpecific";
      };
	};
  };

}
