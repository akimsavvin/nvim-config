return {
	{
		"folke/trouble.nvim",
		cond = function()
			return not vim.g.vscode
		end,
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>dg",
				"<cmd>Trouble diagnostics toggle focus=true<cr>",
				desc = "Global diagnostics",
			},
			{
				"<leader>db",
				"<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>",
				desc = "Buffer diagnostics",
			},
			{
				"<leader>ds",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Diagnostics symbols",
			},
		}
	}
}
