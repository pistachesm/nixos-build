{ ... }:

{
  programs.git = {
    enable = true;
	userName = "chame";
	userEmail = "chame.murrieta@icloud.com";
	extraConfig = {
      init.defaultBranch = true;
	  pull.rebase = false;
	  fetch.prune = true;
	  push.autoSetupRemote = true;
	};
  };

}
