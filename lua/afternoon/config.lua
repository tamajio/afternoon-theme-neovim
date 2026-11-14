-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local defaults = require("afternoon.palette")

local M = {
  options = {
    palette          = {},
    highlight_groups = {},
  },
  palette = vim.deepcopy(defaults),
}

function M.extend(options)
  M.options = vim.tbl_deep_extend("force", M.options, options or {})

  for name, color in pairs(defaults) do
    M.palette[name] = color
  end
  for name, color in pairs(M.options.palette) do
    M.palette[name] = color
  end
end

return M
