{ modulesPath, ... }:

{
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

  boot = {
    initrd = {
      availableKernelModules = [
        "nvme"
        "xhci_pci"
        "usb_storage"
        "sd_mod"
        "rtsx_pci_sdmmc"
        "thunderbolt"
      ];
      kernelModules = [ "amdgpu" "ideapad_laptop" ];
    };

    kernelModules = [ "kvm-amd" ];
    extraModulePackages = [];

	blacklistedKernelModules = [ "elan_i2c" ];
  };
}
