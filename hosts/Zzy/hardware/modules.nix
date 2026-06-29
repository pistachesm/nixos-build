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
      kernelModules = [ "amdgpu" ];
    };

    kernelModules = [ "kvm-amd" "ideapad_laptop" ];
    extraModulePackages = [];
  };
}
