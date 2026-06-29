{ config, ... }:

{

  programs.w3m = {
    enable = true;
    bindings = {
      "{" = "PREV_PAGE";
      "}" = "NEXT_PAGE";
    };
  };

}
