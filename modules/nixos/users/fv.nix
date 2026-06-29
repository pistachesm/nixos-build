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
	  "git"
    ];
  };

  security.sudo.extraRules = [
    {
      users = [ "fv" ];
      #commands = [
      #];
    }
  ];
}
