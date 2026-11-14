-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

return {
  ["@function.call.bash"]      = { fg = c.blue },
  ["@variable.parameter.bash"] = { fg = c.foreground },
  ["@bash.argumentFlag.bash"]  = { fg = c.soft_mint },
}
