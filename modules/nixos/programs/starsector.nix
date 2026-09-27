{ pkgs, lib, config, ... }:

{

  programs.nix-ld.enable = true;

  environment.systemPackages = [
    # overrides the NixOS package, starsector, see: https://wiki.nixos.org/wiki/Starsector
    (pkgs.starsector.overrideAttrs ({ ... }: {
      postInstall = ''
        cp ${.local/share/starsector/settings.json} $out/share/starsector/data/config/settings.json

        substituteInPlace $out/share/starsector/.starsector.sh-wrapped \
          --replace-fail "Xms5120m" "Xms8192m" \
          --replace-fail "Xmx5120m" "Xmx8192m"
      '';
    }))
  ];


}
