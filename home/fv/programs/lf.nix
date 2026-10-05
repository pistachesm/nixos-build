{ config, lib, pkgs, ... }:

let
  lf-cleaner = pkgs.writeShellScript "lf-cleaner" ''
    ${pkgs.kitty}/bin/kitty +kitten icat \
      --clear \
      --stdin=no \
      --transfer-mode=memory \
      </dev/null >/dev/tty
  '';
in
{
  programs.lf = {
    enable = true;

    settings = {
      preview = true;
      drawbox = true;

      cleaner = "${lf-cleaner}";
    };

    keybindings = {
      "." = "set hidden!";
      "<enter>" = "open";
    };

    previewer.source = pkgs.writeShellScript "lf-preview" ''
      file="$1"

      case "$file" in
        *.tar|*.tar.*)
          ${pkgs.gnutar}/bin/tar -tf "$file"
          ;;

        *.zip)
          ${pkgs.unzip}/bin/unzip -l "$file"
          ;;

        *.rar)
          ${pkgs.unrar}/bin/unrar l "$file"
          ;;

        *.7z)
          ${pkgs.p7zip}/bin/7z l "$file"
          ;;

        *.png|*.jpg|*.jpeg|*.webp|*.gif)
          ${pkgs.kitty}/bin/kitty +kitten icat \
            --stdin=no \
            --transfer-mode=memory \
            --place "$2x$3@$4x$5" \
            "$file" \
            </dev/null >/dev/tty

          exit 1
          ;;

        *)
          ${pkgs.bat}/bin/bat \
            --color=always \
            --plain \
            "$file"
          ;;
      esac
    '';
  };
}
