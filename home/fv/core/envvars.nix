{ ... }:

{
  
  home = { 

    sessionVariables = {
      NIX_TEST = "funciona";
      RUST_BACKTRACE= "1";
	  NIXOS_OZONE_WL = "1";
	  EDITOR = "nvim";
	  VISUAL = "nvim";
	};

	sessionPath = [ "$HOME/.local/bin" ];
  
  };

}
