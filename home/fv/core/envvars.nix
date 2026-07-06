{ ... }:

{
  
  home = { 

    sessionVariables = {
      NIX_TEST = "funciona";
    };

	sessionPath = [ "$HOME/.local/bin" ];
  
  };

}
