{ pkgs, ... }:

{

  fonts = {
    enableDefaultPackages = true;
	fontconfig = {
	  enable = true;
	  defaultFonts = {
	    serif = [ " FiraCode Nerd Font " ];
	    sansSerif = [ " Fira Sans Nerd Font " ];
	    monospace = [ " JetBrainsMono Nerd Font " ];
	    emoji = [ "Noto Color Emoji" ];
	  };
	  allowBitmaps = true;
	  useEmbeddedBitmaps = true;
	  cache32Bit = true;
	};
	packages = with pkgs; [
      corefonts
  	  dejavu_fonts
	  noto-fonts
	  noto-fonts-cjk-sans
	  noto-fonts-color-emoji
	  inter
	  freefont_ttf
	  liberation_ttf
	  font-awesome
	  ubuntu-classic
	  proggyfonts
	  nerd-fonts.symbols-only
	  nerd-fonts.fira-code
	  nerd-fonts.fira-mono
	  nerd-fonts.droid-sans-mono
	  nerd-fonts.jetbrains-mono
    ];
  };
}
