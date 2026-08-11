{ ... }:

{
  boot.loader = {
    efi.canTouchEfiVariables = true;
    
	systemd-boot = {
	  enable = true;
	  configurationLimit = 5;
	};
    
	grub.enable = false;
  };
}
