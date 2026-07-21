{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    curl
    tree
    coreutils
    e2fsprogs
    dosfstools
    efibootmgr
    pciutils
    linux-firmware
    clinfo
    brightnessctl
    bubblewrap
    nvme-cli
	openssh
	lm_sensors
  ];
}
