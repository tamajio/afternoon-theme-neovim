-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

local M = {}

function M.apply()
  local colors = {
    c.background,
    c.red,
    c.green,
    c.yellow,
    c.blue,
    c.purple,
    c.aqua,
    c.foreground,
    c.comment,
    c.red,
    c.green,
    c.yellow,
    c.blue,
    c.purple,
    c.aqua,
    c.foreground,
  }

  for index, color in ipairs(colors) do
    vim.g["terminal_color_" .. (index - 1)] = color
  end
end

return M
