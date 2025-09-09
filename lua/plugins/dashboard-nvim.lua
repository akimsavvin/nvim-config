return {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
		cond = function()
			return not vim.g.vscode
		end,
		config = function()
			require("dashboard").setup({
				config = {
					week_header = {
						enable = true,
					},
					shortcut = {
						{
							icon = "",
							desc = " Files",
							action = "Telescope find_files",
							key = "f",
							group = "Constant",
						},
						{
							icon = "󰊳",
							desc = " Update",
							action = "Lazy update",
							key = "u",
							group = "Constant",
						},
					},
				},
			})
		end,
	},
}