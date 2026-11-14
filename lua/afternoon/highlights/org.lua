-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette

return {
  -- Heading levels, TODO states, priorities, and tags.
  OrgHeadlineLevel1  = { fg = c.sky_blue, bg = c.background },
  OrgHeadlineLevel2  = { fg = c.yellow },
  OrgHeadlineLevel3  = { fg = c.purple },
  OrgHeadlineLevel4  = { fg = c.aqua },
  OrgHeadlineLevel5  = { fg = c.orange },
  OrgHeadlineLevel6  = { fg = c.cadet_blue },
  OrgHeadlineLevel7  = { fg = c.aquamarine },
  OrgHeadlineLevel8  = { fg = c.turquoise },
  OrgTodo            = { fg = c.red },
  OrgDone            = { fg = c.green },
  OrgHeadlineDone    = { fg = c.orange },
  OrgHeadlineTodo    = {},
  OrgHeadlineComment = { fg = c.comment },
  OrgPriority        = { fg = c.yellow },
  OrgPriorityA       = { fg = c.red },
  OrgPriorityB       = { fg = c.orange },
  OrgPriorityC       = { fg = c.blue },
  OrgTags            = { fg = c.purple },

  -- Timestamps, planning, drawers, properties, and document metadata.
  OrgTimestamp         = { fg = c.blue, underline = true },
  OrgTimestampInactive = { fg = c.comment },
  OrgPlanning          = { fg = c.orange },
  OrgClockDuration     = { fg = c.yellow },
  OrgDrawer            = { fg = c.comment },
  OrgPropertyKey       = { fg = c.yellow },
  OrgPropertyValue     = { fg = c.foreground },
  OrgKeyword           = { fg = c.comment },
  OrgInfoKeyword       = { fg = c.orange },
  OrgTitleKeyword      = { fg = c.orange },
  OrgKeywordValue      = { fg = c.green },
  OrgTitle             = { fg = c.orange, bold    = true },
  OrgComment           = { fg = c.comment },

  -- Source, quote, and verse blocks, plus inline text styles.
  OrgBlock          = { fg            = c.orange, bg = c.block_background },
  OrgQuoteBlock     = { fg            = c.orange, bg = c.block_background },
  OrgVerseBlock     = { fg            = c.orange, bg = c.block_background },
  OrgBlockDelimiter = { fg            = c.comment },
  OrgBold           = { bold          = true },
  OrgItalic         = { italic        = true },
  OrgUnderline      = { underline     = true },
  OrgStrikethrough  = { strikethrough = true },
  OrgVerbatim       = { fg            = c.yellow },
  OrgCode           = { fg            = c.yellow },

  -- Links, lists, and checkboxes.
  OrgLink            = { fg   = c.blue, underline = true },
  OrgListBullet      = { fg   = c.aqua },
  OrgListTerm        = { bold = true },
  OrgCheckbox        = { fg   = c.yellow },
  OrgCheckboxChecked = { fg   = c.green },
  OrgCheckboxPartial = { fg   = c.orange },
  OrgStatistic       = { fg   = c.red },
  OrgStatisticDone   = { fg   = c.green },

  -- Tables, footnotes, targets, and LaTeX.
  OrgTable          = { fg = c.purple },
  OrgTableSeparator = { fg = c.purple },
  OrgTableFormula   = { fg = c.red },
  OrgFootnote       = { fg = c.aqua },
  OrgTarget         = { fg = c.blue, underline = true },
  OrgLatex          = { fg = c.red },
  OrgHorizontalRule = { fg = c.comment },

  -- Macros, export snippets, and inline source blocks.
  OrgMacro                = { fg = c.orange },
  OrgSexpDate             = { fg = c.blue },
  OrgArchived             = { fg = c.comment },
  OrgExportSnippetMarker  = { fg = c.comment },
  OrgExportSnippetBackend = { fg = c.purple },
  OrgInlineSrcMarker      = { fg = c.comment },
  OrgInlineSrcLang        = { fg = c.orange },
  OrgInlineSrc            = { fg = c.orange, bg = c.block_background },

  -- Org agenda headings, dates, and scheduled/deadline states.
  OrgAgendaHeader           = { fg = c.purple },
  OrgAgendaDate             = { fg = c.blue },
  OrgAgendaDateWeekend      = { fg = c.blue },
  OrgAgendaDateToday        = { fg = c.blue },
  OrgAgendaDone             = { fg = c.green },
  OrgAgendaDimmed           = { fg = c.comment },
  OrgAgendaScheduled        = { fg = c.green },
  OrgAgendaScheduledPast    = { fg = c.orange },
  OrgAgendaDeadline         = { fg = c.red },
  OrgAgendaDeadlineUpcoming = { fg = c.orange },
  OrgAgendaDeadlineDistant  = { fg = c.orange },
}
