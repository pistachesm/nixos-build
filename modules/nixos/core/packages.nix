{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    wget
    curl
    tree
    lf
    btop
    coreutils
    e2fsprogs
    dosfstools
    efibootmgr
    pciutils
    linux-firmware
    clinfo
    brightnessctl
    bubblewrap
    codex
    nvme-cli
  ];
}
