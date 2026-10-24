
{ palette, ... }:

{
  programs.nixvim.extraConfigLua = ''
    vim.o.termguicolors = true
    vim.o.background = "dark"

    vim.cmd("highlight clear")

    if vim.fn.exists("syntax_on") == 1 then
      vim.cmd("syntax reset")
    end

    -- Paleta compartida
    local c = {
      fg = "${palette.foreground}",
      bg = "${palette.background}",
      url = "${palette.url}",

      black = "${palette.black}",
      red = "${palette.red}",
      green = "${palette.magenta}",
      yellow = "${palette.yellow}",
      blue = "${palette.blue}",
      magenta = "${palette.green}",
      cyan = "${palette.cyan}",
      white = "${palette.white}",

      brightBlack = "${palette.brightBlack}",
      brightRed = "${palette.brightRed}",
      brightGreen = "${palette.brightMagenta}",
      brightYellow = "${palette.brightYellow}",
      brightBlue = "${palette.brightBlue}",
      brightMagenta = "${palette.brightGreen}",
      brightCyan = "${palette.brightCyan}",
      brightWhite = "${palette.brightWhite}",

      selectionFg = "${palette.selectionForeground}",
      selectionBg = "${palette.selectionBackground}",
    }

    local hl = vim.api.nvim_set_hl
    local transparent = "NONE"

    -- Base
    hl(0, "Normal", {
      fg = c.fg,
      bg = transparent,
    })

    hl(0, "NormalNC", {
      fg = c.fg,
      bg = transparent,
    })

    hl(0, "NormalFloat", {
      fg = c.fg,
      bg = c.bg,
    })

    hl(0, "FloatBorder", {
      fg = c.blue,
      bg = c.bg,
    })

    hl(0, "EndOfBuffer", {
      fg = c.bg,
      bg = transparent,
    })

    hl(0, "SignColumn", {
      bg = transparent,
    })

    -- Sintaxis
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
      fg = c.blue,
    })

    hl(0, "Keyword", {
      fg = c.blue,
    })

    hl(0, "Conditional", {
      fg = c.blue,
    })

    hl(0, "Repeat", {
      fg = c.blue,
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

    hl(0, "Directory", {
      fg = c.blue,
    })

    hl(0, "Underlined", {
      fg = c.url,
      underline = true,
    })

    -- Interfaz
    hl(0, "LineNr", {
      fg = c.brightBlack,
    })

    hl(0, "CursorLineNr", {
      fg = c.yellow,
      bold = true,
    })

    hl(0, "CursorLine", {
      bg = c.bg,
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
      fg = c.fg,
      bg = c.selectionBg,
    })

    hl(0, "StatusLineNC", {
      fg = c.brightBlack,
      bg = transparent,
    })

    hl(0, "WinSeparator", {
      fg = c.selectionBg,
    })

    -- Diagnosticos LSP
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

    hl(0, "DiagnosticOk", {
      fg = c.green,
    })

    hl(0, "DiagnosticUnderlineError", {
      undercurl = true,
      sp = c.red,
    })

    hl(0, "DiagnosticUnderlineWarn", {
      undercurl = true,
      sp = c.yellow,
    })

    hl(0, "DiagnosticUnderlineInfo", {
      undercurl = true,
      sp = c.cyan,
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
      fg = c.blue,
    })

    hl(0, "@keyword.function", {
      fg = c.blue,
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

