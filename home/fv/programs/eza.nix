{ ... }:

{
  programs.eza = {
    enable = true;
    enableBashIntegration = true;

    icons = "auto";
    colors = "auto";
    git = true;

    extraOptions = [
      "--group-directories-first"
      "--header"
    ];
  };
}
