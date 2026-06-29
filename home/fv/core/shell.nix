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
      rm = "rm -i";
      cp = "cp -i";
      mkdir = "mkdir -pv";
      diff = "kitty +kitten diff";
      wtf = "cht.sh";
    };
    
    bashrcExtra = ''
      set -o noclobber
      bind '"\e[A": history-search-backward'
      bind '"\e[B": history-search-forward'
      shopt -s autocd
    '';

    initExtra = ''
      
      fastfetch

    '';

    historyControl = [ "erasedups" "ignorespace" ];
    historyFileSize = 20000;

  };
}
