{ palette, ... }:

{
  programs.nixvim.extraConfigLua = ''
    vim.o.termguicolors = true

    vim.cmd("highlight clear")

    if vim.fn.exists("syntax_on") == 1 then
      vim.cmd("syntax reset")
    end

    local c = {
      fg = "${palette.foreground}",
      bg = "${palette.background}",

      black = "${palette.black}",
      red = "${palette.red}",
      green = "${palette.green}",
      yellow = "${palette.yellow}",
      blue = "${palette.blue}",
      magenta = "${palette.magenta}",
      cyan = "${palette.cyan}",
      white = "${palette.white}",

      brightBlack = "${palette.brightBlack}",
      brightRed = "${palette.brightRed}",
      brightGreen = "${palette.brightGreen}",
      brightYellow = "${palette.brightYellow}",
      brightBlue = "${palette.brightBlue}",
      brightMagenta = "${palette.brightMagenta}",
      brightCyan = "${palette.brightCyan}",
      brightWhite = "${palette.brightWhite}",

      selectionFg = "${palette.selectionForeground}",
      selectionBg = "${palette.selectionBackground}",
    }

    local hl = vim.api.nvim_set_hl

    -- Base
    hl(0, "Normal", {
      fg = c.fg,
      bg = c.bg,
    })

    hl(0, "NormalNC", {
      fg = c.fg,
      bg = c.bg,
    })

    hl(0, "NormalFloat", {
      fg = c.fg,
      bg = c.bg,
    })

    hl(0, "FloatBorder", {
      fg = c.magenta,
      bg = c.bg,
    })

    -- Syntax
    hl(0, "Comment", {
      fg = c.brightBlack,
      italic = true,
    })

    hl(0, "String", {
      fg = c.green,
    })

    hl(0, "Character", {
      fg = c.green,
    })

    hl(0, "Number", {
      fg = c.yellow,
    })

    hl(0, "Float", {
      fg = c.yellow,
    })

    hl(0, "Boolean", {
      fg = c.brightYellow,
    })

    hl(0, "Constant", {
      fg = c.brightYellow,
    })

    hl(0, "Identifier", {
      fg = c.cyan,
    })

    hl(0, "Function", {
      fg = c.brightCyan,
    })

    hl(0, "Statement", {
      fg = c.magenta,
    })

    hl(0, "Keyword", {
      fg = c.magenta,
    })

    hl(0, "Conditional", {
      fg = c.magenta,
    })

    hl(0, "Repeat", {
      fg = c.magenta,
    })

    hl(0, "Operator", {
      fg = c.red,
    })

    hl(0, "Type", {
      fg = c.cyan,
    })

    hl(0, "Special", {
      fg = c.red,
    })

    hl(0, "PreProc", {
      fg = c.brightMagenta,
    })

    -- UI
    hl(0, "LineNr", {
      fg = c.brightBlack,
    })

    hl(0, "CursorLineNr", {
      fg = c.yellow,
      bold = true,
    })

    hl(0, "Visual", {
      fg = c.selectionFg,
      bg = c.selectionBg,
    })

    hl(0, "Search", {
      fg = c.black,
      bg = c.yellow,
    })

    hl(0, "IncSearch", {
      fg = c.black,
      bg = c.red,
    })

    hl(0, "MatchParen", {
      fg = c.brightYellow,
      bold = true,
      underline = true,
    })

    hl(0, "Pmenu", {
      fg = c.fg,
      bg = c.bg,
    })

    hl(0, "PmenuSel", {
      fg = c.selectionFg,
      bg = c.selectionBg,
    })

    hl(0, "StatusLine", {
      fg = c.brightWhite,
      bg = c.magenta,
    })

    hl(0, "StatusLineNC", {
      fg = c.brightBlack,
      bg = c.bg,
    })

    hl(0, "WinSeparator", {
      fg = c.magenta,
    })

    -- Diagnostics
    hl(0, "DiagnosticError", {
      fg = c.red,
    })

    hl(0, "DiagnosticWarn", {
      fg = c.yellow,
    })

    hl(0, "DiagnosticInfo", {
      fg = c.cyan,
    })

    hl(0, "DiagnosticHint", {
      fg = c.green,
    })

    -- Treesitter
    hl(0, "@comment", {
      link = "Comment",
    })

    hl(0, "@string", {
      fg = c.green,
    })

    hl(0, "@number", {
      fg = c.yellow,
    })

    hl(0, "@boolean", {
      fg = c.brightYellow,
    })

    hl(0, "@function", {
      fg = c.brightCyan,
    })

    hl(0, "@function.call", {
      fg = c.brightCyan,
    })

    hl(0, "@keyword", {
      fg = c.magenta,
    })

    hl(0, "@keyword.function", {
      fg = c.magenta,
    })

    hl(0, "@type", {
      fg = c.cyan,
    })

    hl(0, "@variable", {
      fg = c.fg,
    })

    hl(0, "@variable.builtin", {
      fg = c.red,
    })

    hl(0, "@property", {
      fg = c.cyan,
    })

    hl(0, "@constructor", {
      fg = c.brightMagenta,
    })

    hl(0, "@operator", {
      fg = c.red,
    })

    hl(0, "@punctuation", {
      fg = c.fg,
    })
  '';
}
