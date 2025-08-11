-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- General
vim.keymap.set("n", "r", ":redo<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>") -- Quit

-- Plugins
vim.keymap.set("n", "<localleader>l", ":Lazy<CR>")
vim.keymap.set("n", "<localleader>m", ":Mason<CR>")

-- Buffer
-- All buffer keymaps must start with buffer_prefix
-- buffer_prefix is "<leader>b(uffer)"
local buffer_prefix = "<leader>b"
vim.keymap.set("n", buffer_prefix.."s", ":w<CR>") -- Save
vim.keymap.set("n", buffer_prefix.."c", ":bd<CR>") -- Close
vim.keymap.set("n", buffer_prefix.."C", ":bd!<CR>") -- Close without save
vim.keymap.set("n", buffer_prefix.."x", ":BufferLineCloseOthers<CR>") -- Close others

-- File explorer
vim.keymap.set("n", "<leader>e", ":Neotree toggle reveal<CR>") -- Tree

-- Split
vim.keymap.set("n", "\\", ":split<CR>")
vim.keymap.set("n", "|", ":vsplit<CR>")

-- Split navigation
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
