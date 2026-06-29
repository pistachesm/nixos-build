{ ... }:

{
  users.users.fv = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "audio"
      "input"
    ];
  };

  security.sudo.extraRules = [
    {
      users = [ "fv" ];
      commands = [
        {
          command = "/run/current-system/sw/bin/nixos-rebuild";
          options = [ "NOPASSWD" ];
        }
      ];
    }
  ];
}
