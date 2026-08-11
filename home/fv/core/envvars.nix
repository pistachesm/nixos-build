{ ... }:

{
  
  home = { 

    sessionVariables = {
      NIX_TEST = "funciona";
      RUST_BACKTRACE= "1";
	};

	sessionPath = [ "$HOME/.local/bin" ];
  
  };

}
