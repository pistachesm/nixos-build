{ ... }:

{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixos_small";
        padding.right = 4;
      };
      display = {
        separator = "  ";
        size.binaryPrefix = "si";
      };
      modules = [
        "title"
        "separator"
        {
          type = "kernel";
          key = "Kernel";
        }
        {
          type = "packages";
          key = "Packages";
        }
        {
          type = "cpu";
          key = "CPU";
          format = "{name} ({cores-physical}C/{cores-logical}T) @ {freq-max}";
        }
		{
          type = "memory";
          key = "Memory";
		}
        {
          type = "disk";
          key = "Disk";
          folders = "/";
        }
      ];
    };
  };
}
