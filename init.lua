vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("core.configs")
require("core.lazy")

if vim.g.vscode then
	require("core.vscode_mappings")
else
	require("core.nvim_mappings")
end