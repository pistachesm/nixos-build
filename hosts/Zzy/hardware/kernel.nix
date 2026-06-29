{ pkgs, ... }:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [
      "amd_pstate=active"
      "rootfstype=ext4"
      "amdgpu.dpm=1"
      "amdgpu.ppfeaturemask=0xfff7ffff"
    ];
  };
}
