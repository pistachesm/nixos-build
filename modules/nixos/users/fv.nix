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
    ];
  };

  security = {
    sudo.wheelNeedsPassword = true;
  };

}
