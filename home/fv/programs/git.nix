{ ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "chame";
        email = "chame.murrieta@icloud.com";
      };
      init.defaultBranch = "main";
      pull.rebase = false;
      fetch.prune = true;
      push.autoSetupRemote = true;
    };
  };
}
