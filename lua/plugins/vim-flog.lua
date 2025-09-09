return {
	{
		"rbong/vim-flog",
		cond = function()
			return not vim.g.vscode
		end,
		lazy = true,
		cmd = { "Flog", "Flogsplit", "Floggit" },
		dependencies = { "tpope/vim-fugitive" }
	}
}
