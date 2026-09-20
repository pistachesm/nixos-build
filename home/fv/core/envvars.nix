{ ... }:

{
  
  home = { 

    sessionVariables = {
      NIX_TEST = "funciona";
      RUST_BACKTRACE= "1";
	  NIXOS_OZONE_WL = "1";
	  EDITOR = "nvim";
	  VISUAL = "nvim";

	  # Graphical Session Variables.
	  WAYLAND_DISPLAY = "wayland-1";
	  DISPLAY = ":0";
	};

  };

}
