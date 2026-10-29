{ ... }:

{
  users.users.fv = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
	  "render"
      "audio"
      "input"
	  "git"
	  "polkituser"
    ];
  };

  security = {
    sudo.wheelNeedsPassword = true;
  };

}
