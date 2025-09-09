-- General
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" }) -- Quit

-- Plugins
vim.keymap.set("n", "<localleader>l", ":Lazy<CR>", { desc = "Open Lazy" })
vim.keymap.set("n", "<localleader>m", ":Mason<CR>", { desc = "Open Mason" })

-- Buffer
-- All buffer keymaps must start with buffer_prefix
-- buffer_prefix is "<leader>b(uffer)"
local buffer_prefix = "<leader>b"

vim.keymap.set("n", buffer_prefix .. "s", ":w<CR>", { desc = "Save buffer" })
vim.keymap.set("n", buffer_prefix .. "c", ":bd<CR>", { desc = "Close buffer" })
vim.keymap.set("n", buffer_prefix .. "C", ":bd!<CR>", { desc = "Close buffer without save" })
vim.keymap.set("n", buffer_prefix .. "x", ":BufferLineCloseOthers<CR>", { desc = "Close other buffers" })

-- Split
vim.keymap.set("n", "\\", ":split<CR>", { desc = "Create horizontal split" })
vim.keymap.set("n", "|", ":vsplit<CR>", { desc = "Create vertical split" })

-- Split navigation
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", { desc = "Go to the left split" })
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", { desc = "Go to the bottom split" })
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", { desc = "Go to the top split" })
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", { desc = "Got to the right split" })

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Prev buffer" })