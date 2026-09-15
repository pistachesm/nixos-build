{ ... }:

{

  programs.obsidian = {
    enable = true;
	vaults.SecondBrain = {
	  target = "Files/SecondBrain";
	};

  };

  systemd.user.tmpfiles.rules = [ "d %h/Files/SecondBrain 0700 - - -" ];

}
