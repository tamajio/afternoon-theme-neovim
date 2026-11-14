-- Copyright (C) 2013 Ozan Sener
-- Neovim port of afternoon-theme.el, modified on 2026-11-08.
-- SPDX-License-Identifier: GPL-3.0-or-later
-- Upstream: https://github.com/ozanvos/emacs-afternoon-theme

local c = require("afternoon.config").palette
local api = vim.api
local namespace = api.nvim_create_namespace("AfternoonNeogitCommitBrackets")
local attached_buffers = {}

local M = {
  highlights = {
    NeogitBranch              = { fg = c.blue },
    NeogitBranchHead          = { fg = c.purple,  bold = true },
    NeogitRemote              = { fg = c.green,   bold = true },
    NeogitTagName             = { fg = c.aqua },
    NeogitObjectId            = { fg = c.comment },
    NeogitGraphAuthor         = { fg = c.aqua },
    NeogitGraphGray           = { fg = c.comment },
    NeogitDiffAdditions       = { fg = c.green },
    NeogitDiffAdd             = { fg = "#ffffff", bg = c.deep_forest_green },
    NeogitDiffAddHighlight    = { fg = "#ffffff", bg = c.deep_forest_green },
    NeogitDiffAddInline       = { fg = c.green,   reverse  = true },
    NeogitDiffDeletions       = { fg = c.orange },
    NeogitDiffDelete          = { fg = "#ffffff", bg = c.oxblood },
    NeogitDiffDeleteHighlight = { fg = "#ffffff", bg = c.oxblood },
    NeogitDiffDeleteInline    = { fg = c.orange,  reverse = true },
    NeogitSectionHeader       = { fg = c.blue,    bold = true },
    NeogitActiveItem          = { bg = c.selection },
    NeogitCommitBracket       = { fg = c.orange },
  },
}

local function highlight_commit_brackets(buf)
  if not api.nvim_buf_is_valid(buf) or not api.nvim_buf_is_loaded(buf) then
    return
  end

  api.nvim_buf_clear_namespace(buf, namespace, 0, -1)
  for row, line in ipairs(api.nvim_buf_get_lines(buf, 0, -1, false)) do
    local start = 1
    while start <= #line do
      local first, last = line:find("%b[]", start)
      if not first then
        break
      end

      api.nvim_buf_set_extmark(buf, namespace, row - 1, first - 1, {
        end_row  = row - 1,
        end_col  = last,
        hl_group = "NeogitCommitBracket",
        hl_mode  = "combine",
        priority = 200,
      })
      start = last + 1
    end
  end
end

local function attach_buffer(buf)
  if
    attached_buffers[buf]
    or not api.nvim_buf_is_valid(buf)
    or not api.nvim_buf_is_loaded(buf)
  then
    return
  end

  attached_buffers[buf] = true
  api.nvim_buf_attach(buf, false, {
    on_lines = function(_, changed_buf)
      vim.schedule(function()
        highlight_commit_brackets(changed_buf)
      end)
    end,
    on_detach = function(_, detached_buf)
      attached_buffers[detached_buf] = nil
    end,
  })
  highlight_commit_brackets(buf)
end

local function is_neogit_buffer(buf)
  local filetype = vim.bo[buf].filetype
  return filetype == "NeogitStatus" or filetype == "NeogitLogView" or filetype == "NeogitCommitView"
end

function M.setup()
  local group = api.nvim_create_augroup("AfternoonNeogitCommitBrackets", { clear = true })
  api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = { "NeogitStatus", "NeogitLogView", "NeogitCommitView" },
    callback = function(event)
      attach_buffer(event.buf)
    end,
  })

  for _, buf in ipairs(api.nvim_list_bufs()) do
    if is_neogit_buffer(buf) then
      attach_buffer(buf)
    end
  end
end

return M
