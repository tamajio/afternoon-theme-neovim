-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

return {
  ["@lsp.type.property.lua"] = { fg = c.foreground },
  ["@lsp.typemod.function.defaultLibrary.lua"] = { link = "Builtin" },
}
