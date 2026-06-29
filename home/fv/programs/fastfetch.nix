{ config, ... }:

{

  programs.fastfetch = {
    enable = true;
    settings = {
      logo ={
        source = "nixos_small";
        padding.right = 1;
      };
      display = {
        size = {
          binaryPrefix = "si";
        };
      };
      modules =[
        {
	  type = "datetime";
	  key = "Date";
	  format = "{1}-{3}-{11}";
	}
	
	"break"
	"player"
        "media"
      ];
    };
  };

}
