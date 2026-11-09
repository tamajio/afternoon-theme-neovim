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
  "neotree",
  "treesitter",
}

function M.apply(overrides)
  local groups = {}

  for _, name in ipairs(modules) do
    local highlights = require("afternoon.highlights." .. name)
    for group, settings in pairs(highlights) do
      groups[group] = settings
    end
  end

  for group, settings in pairs(overrides or {}) do
    if settings.link or (groups[group] and groups[group].link) then
      groups[group] = settings
    else
      groups[group] = vim.tbl_extend("force", groups[group] or {}, settings)
    end
  end

  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
