-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

return {
  -- Comments and documentation text.
  ["@comment"]               = { link = "Comment" },
  ["@comment.documentation"] = { link = "DocComment" },
  ["@string.documentation"]  = { link = "DocString" },

  -- Literal values.
  ["@constant"]              = { link = "Constant" },
  ["@string"]                = { link = "String" },
  ["@character"]             = { link = "Character" },
  ["@number"]                = { link = "Number" },
  ["@boolean"]               = { link = "Boolean" },

  -- Functions and methods.
  ["@function"]              = { link = "Function" },
  ["@function.call"]         = { link = "Function" },
  ["@function.builtin"]      = { link = "Builtin" },
  ["@method"]                = { link = "Function" },
  ["@method.call"]           = { link = "Function" },

  -- Variables, parameters, and properties.
  ["@variable"]              = { fg   = c.foreground },
  ["@variable.assignment"]   = { fg   = c.foreground },
  ["@variable.definition"]   = { fg   = c.orange },
  ["@variable.parameter"]    = { fg   = c.orange },
  ["@variable.builtin"]      = { link = "Builtin" },
  ["@property"]              = { link = "Identifier" },

  -- Keywords, operators, and types.
  ["@keyword"]               = { link = "Keyword" },
  ["@operator"]              = { link = "Operator" },
  ["@type"]                  = { link = "Type" },
  ["@type.builtin"]          = { link = "Type" },

  -- Punctuation and tags.
  ["@punctuation"]           = { link = "Delimiter" },
  ["@punctuation.special"]   = { link = "Delimiter" },
  ["@tag"]                   = { link = "Tag" },

  -- Text emphasis, links, lists, and other markup.
  ["@text.strong"]           = { link = "Bold" },
  ["@text.emphasis"]         = { link = "Italic" },
  ["@text.underline"]        = { link = "Underlined" },
  ["@markup.strong"]         = { link = "Bold" },
  ["@markup.italic"]         = { link = "Italic" },
  ["@markup.strikethrough"]  = { link = "Strike" },
  ["@markup.underline"]      = { link = "Underlined" },
  ["@markup.raw"]            = { link = "String" },
  ["@markup.link"]           = { link = "Underlined" },
  ["@markup.link.url"]       = { link = "Underlined" },
  ["@markup.link.label"]     = { link = "Underlined" },
  ["@markup.math"]           = { link = "Special" },
  ["@markup.environment"]    = { link = "PreProc" },
  ["@markup.list"]           = { link = "Special" },
  ["@markup.list.checked"]   = { link = "Constant" },
  ["@markup.list.unchecked"] = { link = "Identifier" },
  ["@markup.heading"]        = { link = "Title" },
}
