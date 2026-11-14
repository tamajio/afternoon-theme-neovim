-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

return {
  -- Main editing area and floating windows.
  Normal      = { fg = c.foreground, bg = c.background },
  NormalNC    = { fg = c.foreground, bg = c.background },
  NormalFloat = { fg = c.foreground, bg = c.block_background },
  FloatBorder = { fg = c.comment,    bg = c.block_background },

  -- Cursor, current line/column, and visual selection.
  Cursor       = { fg = c.background, bg = c.orange },
  CursorLine   = { bg = c.current_line },
  CursorColumn = { bg = c.current_line },
  ColorColumn  = { bg = c.current_line },
  Visual       = { bg = c.selection },

  -- Search results and the currently active match.
  Search    = { fg = c.background, bg = c.blue },
  IncSearch = { fg = c.background, bg = c.yellow },
  CurSearch = { fg = c.background, bg = c.yellow },

  -- Line numbers, signs, and folded text.
  LineNr       = { fg = c.green, bg   = c.current_line },
  CursorLineNr = { fg = c.yellow, bg  = c.current_line, bold = true },
  SignColumn   = { bg = c.current_line },
  Folded       = { fg = c.comment, bg = c.background },
  FoldColumn   = { fg = c.comment, bg = c.current_line },

  -- Window separators, status lines, and tab lines.
  WinSeparator = { fg = c.comment },
  StatusLine   = { fg = c.foreground, bg = c.current_line, bold = true },
  StatusLineNC = { fg = c.comment,    bg = c.current_line },
  TabLine      = { fg = c.comment,    bg = c.current_line },
  TabLineSel   = { fg = c.foreground, bg = c.background,   bold   = true },
  TabLineFill  = { bg = c.current_line },

  -- Completion popup menu.
  Pmenu      = { fg = c.foreground, bg = c.block_background },
  PmenuSel   = { fg = c.foreground, bg = c.selection },
  PmenuSbar  = { bg = c.current_line },
  PmenuThumb = { bg = c.comment },

  -- Delimiters, concealed text, and non-printable characters.
  MatchParen = { fg = c.foreground, bg = c.dodger_blue, bold = true },
  Conceal    = { fg = c.comment },
  NonText    = { fg = c.selection },
  Whitespace = { fg = c.selection },
  SpecialKey = { fg = c.selection },

  -- File-browser names and common text styles.
  Directory    = { fg     = c.green },
  Title        = { fg     = c.orange, bold           = true },
  Bold         = { bold   = true },
  Italic       = { italic = true },
  Strike       = { fg     = c.comment, strikethrough = true },

  -- Prompts, informational messages, and errors.
  Question   = { fg = c.blue },
  MoreMsg    = { fg = c.green },
  Success    = { fg = c.sea_green },
  ModeMsg    = { fg = c.aqua },
  ErrorMsg   = { fg = c.red, bold = true },
  WarningMsg = { fg = c.orange },
}
