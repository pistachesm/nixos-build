{ config, inputs, ... }:

{

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    waylandSupport = true;
    nixpkgs.useGlobalPackages = true;
    viAlias = true;
    vimAlias = true;
    opts = {
      tabstop = 4;
      shiftwidth = 4;
      expandtab = false;
      number = true;
      relativenumber = false;
      spell = true;

	  # Backups persistentes.
	  backup = true;
	  writebackup = true;
	  backupdir = "${config.xdg.stateHome}/nvim/backup//";

	  # Undo persistente.
	  undofile = true;
	  undodir = "${config.xdg.stateHome}/nvim/undo//";
    };
    autoCmd = [
      {
        event = "BufWritePre";
        pattern = "*";
        desc = "Create timestamped backup before every write";

        callback = {
          __raw = ''
            function()
              local timestamp = os.date("%Y%m%d-%H%M%S")
              local unique = tostring(vim.uv.hrtime())

              vim.opt.backupext =
                "-" .. timestamp .. "-" .. unique .. "~"
            end
          '';
        };
      }
    ];
  };

  systemd.user.tmpfiles.rules = [
    "d ${config.xdg.stateHome}/nvim/backup 0700 - - -"
    "d ${config.xdg.stateHome}/nvim/undo 0700 - - -"
  ];

}
