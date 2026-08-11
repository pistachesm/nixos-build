{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [ cachix ];

  nix.settings = {
    extra-substituters = [
      "https://cachyzz.cachix.org"
    ];

    extra-trusted-public-keys = [
      "cachyzz.cachix.org-1:bm8XcOXTNGltZLfaFovwY9K6SCer2t9f0ofBeqWIias="
    ];
  };
}
