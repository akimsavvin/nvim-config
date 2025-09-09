return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	cond = function()
		return not vim.g.vscode
	end,
	config = function()
		require("nvim-tree").setup()
		vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle explorer" })
	end,
}