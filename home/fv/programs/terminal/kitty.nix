{ ... }:

{
  programs.kitty = {
    enable = true;
    enableGitIntegration = true;
    shellIntegration.enableBashIntegration = true;

    autoThemeFiles = {
      light = "Square";
      dark = "Square";
      noPreference = "Square";
    };
  };
}
