-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

return {
  DiffAdd = { fg = c.green },
  DiffChange = { fg = c.purple },
  DiffDelete = { fg = c.orange },
  DiffText = { fg = c.purple, reverse = true },
  Added = { fg = c.green },
  Changed = { fg = c.purple },
  Removed = { fg = c.red },
  GitSignsAdd = { fg = c.green },
  GitSignsChange = { fg = c.purple },
  GitSignsDelete = { fg = c.red },
}
