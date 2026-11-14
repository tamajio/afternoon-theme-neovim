-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local M = {}
local config = require("afternoon.config")

function M.setup(options)
  config.extend(options)
end

function M.colorscheme(options)
  config.extend(options)

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.background    = "dark"
  vim.o.termguicolors = true

  require("afternoon.highlights").apply(config.options.highlight_groups)
  require("afternoon.terminal").apply()

  vim.g.colors_name = "afternoon"
end

return M
