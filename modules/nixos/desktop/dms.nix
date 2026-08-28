{ ... }:

{
  programs.dms-shell = {
    enable = true;
    systemd = {
      enable = true;
      target = "graphical-session.target";
    };
    enableSystemMonitoring = true;
    enableDynamicTheming = true;
    enableAudioWavelength = true;
    enableCalendarEvents = true;
    enableClipboardPaste = true;

    # This host uses NetworkManager with iwd, so the VPN integration is valid.
    enableVPN = true;
  };
}
