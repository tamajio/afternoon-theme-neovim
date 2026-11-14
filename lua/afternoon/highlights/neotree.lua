-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-09.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

return {
  -- Main tree buffer, cursor line, and selection.
  NeoTreeNormal      = { fg = c.foreground, bg = c.background },
  NeoTreeNormalNC    = { fg = c.foreground, bg = c.background },
  NeoTreeCursorLine  = { bg = c.current_line },
  NeoTreeSelected    = { fg = c.foreground, bg = c.selection },
  NeoTreeSignColumn  = { bg = c.background },
  NeoTreeEndOfBuffer = { fg = c.selection },

  -- Directory, file, and symbolic-link names and icons.
  NeoTreeDirectoryIcon      = { fg   = c.yellow },
  NeoTreeDirectoryName      = { fg   = c.orange, bold = true },
  NeoTreeFileIcon           = { fg   = c.aqua },
  NeoTreeFileName           = { fg   = c.foreground },
  NeoTreeFileNameOpened     = { bold = true },
  NeoTreeRootName           = { fg   = c.orange, bold = true },
  NeoTreeSymbolicLinkTarget = { fg   = c.purple },

  -- Hidden, ignored, dimmed, and tree-structure elements.
  NeoTreeDotfile       = { fg = c.comment },
  NeoTreeHiddenByName  = { fg = c.comment },
  NeoTreeWindowsHidden = { fg = c.comment },
  NeoTreeIgnored       = { fg = c.comment },
  NeoTreeDimText       = { fg = c.comment },
  NeoTreeFadeText1     = { fg = c.comment },
  NeoTreeFadeText2     = { fg = c.comment },
  NeoTreeIndentMarker  = { fg = c.comment },
  NeoTreeExpander      = { fg = c.aqua },

  -- File metadata, filters, and informational messages.
  NeoTreeModified        = { fg = c.orange },
  NeoTreeBufferNumber    = { fg = c.blue },
  NeoTreeFileStats       = { fg = c.comment },
  NeoTreeFileStatsHeader = { fg = c.purple, bold = true },
  NeoTreeFilterTerm      = { fg = c.yellow, bold = true },
  NeoTreeMessage         = { fg = c.aqua, italic = true },

  -- Git status indicators.
  NeoTreeGitAdded     = { fg = c.green },
  NeoTreeGitConflict  = { fg = c.red, bold    = true },
  NeoTreeGitDeleted   = { fg = c.red },
  NeoTreeGitIgnored   = { fg = c.comment },
  NeoTreeGitModified  = { fg = c.purple },
  NeoTreeGitRenamed   = { fg = c.aqua },
  NeoTreeGitStaged    = { fg = c.green },
  NeoTreeGitUntracked = { fg = c.aqua, italic = true },
  NeoTreeGitUnstaged  = { fg = c.orange },

  -- Floating windows, preview, status/tab lines, and separators.
  NeoTreeFloatNormal          = { fg = c.foreground, bg = c.block_background },
  NeoTreeFloatBorder          = { fg = c.comment,    bg = c.block_background },
  NeoTreeFloatTitle           = { fg = c.orange,     bg = c.block_background, bold = true },
  NeoTreeTitleBar             = { fg = c.foreground, bg = c.selection,        bold = true },
  NeoTreePreview              = { bg = c.selection },
  NeoTreeStatusLine           = { fg = c.foreground, bg = c.current_line },
  NeoTreeStatusLineNC         = { fg = c.comment,    bg = c.current_line },
  NeoTreeTabActive            = { fg = c.foreground, bg = c.current_line,     bold = true },
  NeoTreeTabInactive          = { fg = c.comment,    bg = c.current_line },
  NeoTreeTabSeparatorActive   = { fg = c.selection },
  NeoTreeTabSeparatorInactive = { fg = c.current_line },
  NeoTreeVertSplit            = { fg = c.comment },
  NeoTreeWinSeparator         = { fg = c.comment },
}
