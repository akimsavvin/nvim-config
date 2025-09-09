return {
	{
		"folke/which-key.nvim",
		cond = function()
			return not vim.g.vscode
		end,
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps",
			},
		},
		init = function()
			require("which-key").add({
				{ "<leader>b", group = "Buffer" },
				{ "<leader>g", group = "Git" },
				{ "<leader>d", group = "Diagnostics" },
				{ "<leader>f", group = "Find" },
				{ "c", group = "Code" },
				{ "<leader>c", group = "Comment" },
			})
		end,
	},
}
