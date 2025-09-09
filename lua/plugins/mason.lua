return {
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				keymaps = {
					uninstall_package = "d",
				},
			},
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		opts = {
			enusre_installed = {
				"lua_ls",
				"vimls",
				"gopls",
				"ts_ls",
				"vue_ls",
				"tailwindcss",
			},
		},
	},
}