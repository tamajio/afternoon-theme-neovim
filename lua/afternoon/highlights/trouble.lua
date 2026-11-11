-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

return {
  TroubleNormal = { link = "Normal" },
  TroubleNormalNC = { link = "NormalNC" },
  TroubleFilename = { fg = c.purple },
  TroubleCode = { fg = c.sky_blue },
  TroubleDirectory = { fg = c.orange, bg = c.background },
  TroubleIconDirectory = { fg = c.orange, bg = c.background },
  TroubleIndent = { fg = c.comment, bg = c.background },
  TroubleIndentFoldClosed = { fg = c.yellow, bg = c.background, bold = true },
}
