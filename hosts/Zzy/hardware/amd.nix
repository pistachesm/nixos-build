{ pkgs, ... }:

{
  hardware = {
    enableRedistributableFirmware = true;

    cpu.amd = {
      ryzen-smu.enable = true;
      updateMicrocode = true;
    };

    amdgpu = {
      initrd.enable = true;
      opencl.enable = true;
    };

    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        mesa.opencl
        libvdpau-va-gl
      ];
    };
  };

  services.frigate.vaapiDriver = "radeonsi";
}
