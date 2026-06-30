{ pkgs, ... }:

let
  runGuiAsRoot = pkgs.writeShellScriptBin "run-gui-as-root" ''
    exec ${pkgs.polkit}/bin/pkexec ${pkgs.coreutils}/bin/env \
      DISPLAY="$DISPLAY" \
      WAYLAND_DISPLAY="$WAYLAND_DISPLAY" \
      XDG_RUNTIME_DIR="$XDG_RUNTIME_DIR" \
      XAUTHORITY="$XAUTHORITY" \
      "$@"
  '';

  autoCpufreqGtkRoot = pkgs.writeShellScriptBin "auto-cpufreq-gtk-root" ''
    exec ${runGuiAsRoot}/bin/run-gui-as-root ${pkgs.auto-cpufreq}/bin/auto-cpufreq-gtk
  '';
in
{
  programs.fuzzel = {
    enable = true;
    settings.main = {
      terminal = "${pkgs.kitty}/bin/kitty";
    };
  };

  home.packages = [
    runGuiAsRoot
    autoCpufreqGtkRoot
  ];

  xdg.desktopEntries.auto-cpufreq-root = {
    name = "auto-cpufreq (root)";
    genericName = "CPU power manager";
    comment = "Open auto-cpufreq with administrator privileges";
    exec = "auto-cpufreq-gtk-root";
    icon = "auto-cpufreq";
    terminal = false;
    categories = [ "System" "Settings" ];
  };
}
