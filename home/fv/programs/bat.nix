{ pkgs, ... }:

{
  
  programs.bat.enable = true;
  
  home.packages = [ 
    pkgs.bat-extras.prettybat
  ];

}
