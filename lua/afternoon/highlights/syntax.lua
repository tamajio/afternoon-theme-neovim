-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.palette")

return {
  Comment = { fg = c.comment },
  DocComment = { fg = c.moccasin },
  DocString = { fg = c.yellow },
  Constant = { fg = c.green },
  String = { fg = c.burlywood },
  Character = { fg = c.burlywood },
  Number = { fg = c.green },
  Boolean = { fg = c.green },
  Float = { fg = c.green },
  Builtin = { fg = c.light_coral },
  Identifier = { fg = c.yellow },
  Function = { fg = c.orange },
  Statement = { fg = c.blue },
  Conditional = { fg = c.blue },
  Repeat = { fg = c.blue },
  Label = { fg = c.blue },
  Operator = { fg = c.blue },
  Keyword = { fg = c.blue },
  Exception = { fg = c.blue },
  PreProc = { fg = c.orange },
  Include = { fg = c.orange },
  Define = { fg = c.orange },
  Macro = { fg = c.orange },
  Type = { fg = c.cadet_blue },
  StorageClass = { fg = c.cadet_blue },
  Structure = { fg = c.cadet_blue },
  Typedef = { fg = c.cadet_blue },
  Special = { fg = c.aqua },
  SpecialChar = { fg = c.yellow },
  Tag = { fg = c.blue },
  Delimiter = { fg = c.foreground },
  SpecialComment = { fg = c.comment },
  Debug = { fg = c.red },
  Underlined = { fg = c.blue, underline = true },
  Error = { fg = c.red, bold = true },
  Todo = { fg = c.orange, bold = true },
}
