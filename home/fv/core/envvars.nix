{ ... }:

{
  
  home = { 

    sessionVariables = {
      NIX_TEST = "funciona";
      RUST_BACKTRACE= "1";
	  NIXOS_OZONE_WL = "1";
	  EDITOR = "nvim";
	  VISUAL = "nvim";
	  KITTY_ENABLE_WAYLAND = "1";
	  KITTY_SHELL_INTEGRATION = "enabled";
	};

  };
}
