-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local M = {}
local modules = {
  "base",
  "syntax",
  "git",
  "lsp",
  "org",
  "treesitter",
}

function M.apply()
  for _, name in ipairs(modules) do
    local highlights = require("afternoon.highlights." .. name)
    for group, settings in pairs(highlights) do
      vim.api.nvim_set_hl(0, group, settings)
    end
  end
end

return M
