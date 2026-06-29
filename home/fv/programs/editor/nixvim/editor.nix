{ inputs, ... }:

{

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    waylandSupport = true;
    nixpkgs.useGlobalPackages = true;
    viAlias = true;
    vimAlias = true;
    opts = {
      tabstop = 4;
      shiftwidth = 4;
      expandtab = false;
      number = true;
      relativenumber = false;
      spell = true;
    };
  };

}
