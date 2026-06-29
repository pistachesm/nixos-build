{ pkgs, ... }:

{
  time.timeZone = "America/Mexico_City";
  i18n.defaultLocale = "en_US.UTF-8";

  console = {
    keyMap = "la-latin1";
    font = "ter-122b";
    packages = [ pkgs.terminus_font ];
  };
}
