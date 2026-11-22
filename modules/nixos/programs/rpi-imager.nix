
{ pkgs, lib, ... }:

let
  imager = pkgs.rpi-imager;

  imagerPolicy = pkgs.writeTextFile {
    name = "rpi-imager-polkit-policy";

    destination =
      "/share/polkit-1/actions/com.raspberrypi.rpi-imager.policy";

    text = ''
      <?xml version="1.0" encoding="UTF-8"?>
      <policyconfig>
        <vendor>Raspberry Pi Ltd</vendor>

        <action id="com.raspberrypi.rpi-imager.run">
          <description>Run Raspberry Pi Imager</description>
          <message>Authentication is required to run Raspberry Pi Imager</message>

          <defaults>
            <allow_any>auth_admin</allow_any>
            <allow_inactive>auth_admin</allow_inactive>
            <allow_active>auth_admin</allow_active>
          </defaults>

          <annotate key="org.freedesktop.policykit.exec.path">${lib.getExe imager}</annotate>
          <annotate key="org.freedesktop.policykit.exec.allow_gui">true</annotate>
        </action>
      </policyconfig>
    '';
  };

in
{
  environment.systemPackages = [
    imager
    imagerPolicy
  ];
}

