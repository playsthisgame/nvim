-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jk", "<ESC>")                 -- exit insert mode with jk
keymap.set("i", "ii", "<ESC>")                 -- exit insert mode with ii
keymap.set("n", "<leader>wq", ":wq<CR>")       -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>")       -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>")        -- save
keymap.set("n", "gx", ":!open <c-r><c-a><CR>") -- open URL under cursor

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v")     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")     -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")     -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window
keymap.set("n", "<leader>sj", "<C-w>-")     -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+")     -- make split windows height taller
keymap.set("n", "<leader>sl", "<C-w>>5")    -- make split windows width bigger
keymap.set("n", "<leader>sh", "<C-w><5")    -- make split windows width smaller

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close a tab
keymap.set("n", "<tab>", ":tabn<CR>")          -- next tab
keymap.set("n", "<S-tab>", ":tabp<CR>")        -- previous tab

-- Buffer Navigation
keymap.set("n", "]b", ":bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "[b", ":bprevious<CR>", { desc = "Previous buffer" })

-- remove the default neo tree mapping
-- pcall(vim.keymap.del, "n", "<leader>e")
-- pcall(vim.keymap.del, "n", "<leader>E")
-- pcall(vim.keymap.del, "n", "<leader>fE")

-- Force override for grep
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Grep Workspace" })

-- LSP Navigation
-- pcall(vim.keymap.del, "n", "<leader>gd") -- unmap the default git diff
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to Implementation" })
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { desc = "Go to Type Definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to References" })

-- Format file
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format buffer" })

