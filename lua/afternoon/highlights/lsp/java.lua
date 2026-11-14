-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

return {
  ["@lsp.type.modifier.java"] = { link = "Keyword" },
  ["@lsp.type.keyword.java"] = { link = "Keyword" },
  ["@lsp.type.class.java"] = { link = "Type" },
  ["@lsp.type.interface.java"] = { link = "Type" },
  ["@lsp.type.enum.java"] = { link = "Type" },
  ["@lsp.type.typeParameter.java"] = { link = "Type" },
  ["@lsp.type.variable.java"] = { fg = c.foreground },
  ["@lsp.type.parameter.java"] = { link = "@variable.parameter" },
  ["@lsp.type.property.java"] = { fg = c.foreground },
  ["@lsp.type.method.java"] = { link = "Function" },
  ["@lsp.type.function.java"] = { link = "Function" },
  ["@lsp.type.enumMember.java"] = { link = "Constant" },
  ["@lsp.type.annotation.java"] = { link = "PreProc" },
}
