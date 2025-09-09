return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		cond = function()
			return not vim.g.vscode
		end,
		config = function()
			require("bufferline").setup()
		end
	}
}
