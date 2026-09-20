{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    curl
    tree
    coreutils
	coreboot-utils
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
	nvtopPackages.amd
	vulkan-tools
	mesa-demos
	util-linux

	inotify-tools

	# libnewt Library.
	newt

	# Python Library.
	python314Packages.pyxdg
	python314Packages.dbus-python
  ];
}
