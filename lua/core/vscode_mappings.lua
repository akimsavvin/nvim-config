local vscode = require("vscode")

vim.notify = vscode.notify

-- Tabs
vim.keymap.set("n", "<Tab>", ":tabnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":tabprev<CR>", { desc = "Prev buffer" })

-- LSP
local prefix = "c"
vim.keymap.set("n", prefix .. "u", vim.lsp.buf.references, {
	desc = "go to the code usages",
})

vim.keymap.set("n", prefix .. "d", vim.lsp.buf.definition, {
	desc = "go to the code definition",
})

vim.keymap.set("n", prefix .. "t", vim.lsp.buf.type_definition, {
	desc = "Go to the code type definition",
})

vim.keymap.set("n", prefix .. "i", vim.lsp.buf.implementation, {
	desc = "Go to the code implementation",
})

vim.keymap.set("n", prefix .. "s", vim.lsp.buf.signature_help, {
	desc = "Show the code signature",
})

vim.keymap.set("n", prefix .. "p", vim.lsp.buf.hover, {
	desc = "Show the preview",
})

vim.keymap.set("n", prefix .. "r", vim.lsp.buf.rename, {
	desc = "Rename the code",
})

vim.keymap.set("n", prefix .. "a", vim.lsp.buf.code_action, {
	desc = "Show the code action menu",
})