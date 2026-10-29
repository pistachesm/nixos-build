{ pkgs, ... }:

let
  colloid = pkgs.colloid-gtk-theme.override {
    themeVariants = [ "teal" ];
    colorVariants = [ "dark" ];
    sizeVariants = [ "standard" ];
  };
  
  kvantumTheme = pkgs.catppuccin-kvantum.override {
    accent = "teal";
	variant = "mocha";
  };

in
{
  gtk = {
    enable = true;
	theme = {
      name = "Colloid-Teal-Dark";
	  package = colloid;
	};

	iconTheme = {
	  name = "Kora";
	  package = pkgs.kora-icon-theme;
	};
  
    cursorTheme = {
      name = "Adwaita";
      package = pkgs.bibata-cursors;
      size = 18;
	};
	gtk3.extraConfig.gtk-application-prefer-dark-theme = true;
  };

  qt = {
    enable = true;

    platformTheme.name = "qtct";
    style.name = "kvantum";

    kvantum = {
      enable = true;

      themes = [ kvantumTheme ];
	
      settings.General.theme = "catppuccin-mocha-teal";
    
	};
  };

  home.pointerCursor = {
	enable = true;
	gtk.enable = true;
	package = pkgs.bibata-cursors;
	name = "Bibata-Modern-Ice";
	size = 18;
  };

  dconf.settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";

}
