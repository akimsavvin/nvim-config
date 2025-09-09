return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				go = { "gofumpt", "gofmt", stop_after_first = true },
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			},
		},
		init = function()
			vim.keymap.set("n", "cf", function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end)
		end,
	},
}