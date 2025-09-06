-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- disable autoformat on save
vim.g.autoformat = false

-- Auto-indentation settings
vim.opt.autoindent = true      -- Copy indent from current line when starting new line
vim.opt.smartindent = true     -- Smart autoindenting when starting new line
vim.opt.cindent = true         -- C-style indenting (good for Java too)

-- Tab settings (make sure these match your preference)
vim.opt.tabstop = 4           -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4        -- Number of spaces for each step of autoindent
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.softtabstop = 4       -- Number of spaces tab key inserts
