{ palette, ... }:

let
  c = palette;

  base = {
    b = {
      fg = c.foreground;
      bg = c.selectionBackground;
    };

    c = {
      fg = c.foreground;
      bg = c.background;
    };
  };

  mode = accent: base // {
    a = {
      fg = c.black;
      bg = accent;
      gui = "bold";
    };
  };

in
{
  programs.nixvim.plugins.lualine = {
    enable = true;

    settings = {
      options = {
        globalstatus = true;

        # Separadores discretos
        component_separators = {
          left = "│";
          right = "│";
        };

        section_separators = {
          left = "";
          right = "";
        };

        theme = {
          normal = mode c.blue;
          insert = mode c.green;
          visual = mode c.magenta;
          replace = mode c.red;
          command = mode c.yellow;

          inactive = {
            a = {
              fg = c.brightBlack;
              bg = c.background;
            };

            b = {
              fg = c.brightBlack;
              bg = c.background;
            };

            c = {
              fg = c.brightBlack;
              bg = c.background;
            };
          };
        };
      };
    };
  };
}

