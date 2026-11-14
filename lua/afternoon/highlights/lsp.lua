-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

return {
  DiagnosticError = { fg = c.red },
  DiagnosticWarn = { fg = c.orange },
  DiagnosticInfo = { fg = c.blue },
  DiagnosticHint = { fg = c.aqua },
  DiagnosticOk = { fg = c.green },
  DiagnosticUnderlineError = { undercurl = true, sp = c.red },
  DiagnosticUnderlineWarn = { undercurl = true, sp = c.orange },
  DiagnosticUnderlineInfo = { undercurl = true, sp = c.blue },
  DiagnosticUnderlineHint = { undercurl = true, sp = c.aqua },
  DiagnosticVirtualTextError = { link = "DiagnosticError" },
  DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
  DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
  DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
  DiagnosticSignError = { link = "DiagnosticError" },
  DiagnosticSignWarn = { link = "DiagnosticWarn" },
  DiagnosticSignInfo = { link = "DiagnosticInfo" },
  DiagnosticSignHint = { link = "DiagnosticHint" },
  LspDiagnosticsDefaultError = { link = "DiagnosticError" },
  LspDiagnosticsDefaultWarning = { link = "DiagnosticWarn" },
  LspDiagnosticsDefaultInformation = { link = "DiagnosticInfo" },
  LspDiagnosticsDefaultHint = { link = "DiagnosticHint" },
  ["@lsp.type.modifier"] = { link = "Keyword" },
  LspReferenceText = { bg = c.current_line },
  LspReferenceRead = { bg = c.current_line },
  LspReferenceWrite = { bg = c.current_line },
}
