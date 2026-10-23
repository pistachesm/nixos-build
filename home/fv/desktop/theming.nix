{ pkgs, ... }:

let
  colloid = pkgs.colloid-gtk-theme.override {
    themeVariants = [ "teal" ];
    colorVariants = [ "dark" ];
    sizeVariants = [ "standard" ];
  };
in
{
  gtk = {
    enable = true;
	colorScheme = "dark";
    
	theme = {
      name = "Colloid-Teal-Dark";
	  package = colloid;
	};

	iconTheme = {
	  name = "Kora";
	  package = pkgs.kora-icon-theme;
	};
  };

  qt = {
    enable = true;

    platformTheme.name = "qtct";
    style.name = "kvantum";

    kvantum = {
      enable = true;

      themes = [
        (pkgs.catppuccin-kvantum.override {
          accent = "teal";
          variant = "mocha";
        })
      ];

      settings.General.theme = "catppuccin-mocha-teal";
    };
  };
}
