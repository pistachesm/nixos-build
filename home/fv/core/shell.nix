{ ... }:

{
  home.shell.enableBashIntegration = true;

  programs.bash = {
    enable = true;
    enableCompletion = true;
    
    shellAliases = {
      ls = "eza";
      lsa = "eza -a";
      lsl = "eza -al";
      lst = "eza -lTa -L 2";
      lstx = "eza -lTa -L 4";
      rm = "rm -I";
	  cpr = "rsync -avh --info=progress2";
	  cp = "cp -v";
	  mv = "mv -v";
      mkdir = "mkdir -pv";
      diff = "kitty +kitten diff";
      wtf = "cht.sh";

	  nix-switch = "sudo nixos-rebuild switch --flake /home/fv/Code/nixos-build#Zzy";
	  nix-test = "sudo nixos-rebuild test --flake /home/fv/Code/nixos-build#Zzy";
	  nix-check = "nix flake check /home/fv/Code/nixos-build";
	  nix-update = "nix flake update /home/fv/Code/nixos-build";
    
	};
    
    bashrcExtra = ''
      set -o noclobber
      bind '"\e[A": history-search-backward'
      bind '"\e[B": history-search-forward'
      shopt -s histappend
	  PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
    '';

    initExtra = ''
      
      fastfetch

    '';

    historyControl = [ "erasedups" "ignorespace" ];
    historyFileSize = 20000;
	historySize = 20000;
    };

}
