return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("lspconfig")

			vim.lsp.enable('lua_ls')
			vim.lsp.enable('gopls')
			vim.lsp.enable('tsserver')
			vim.lsp.enable('tailwindcss')

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

					local opts = { buffer = ev.buf }
					local prefix = "c"
					vim.keymap.set("n", prefix .. "d", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", prefix .. "t", vim.lsp.buf.type_definition, opts)
					vim.keymap.set("n", prefix .. "i", vim.lsp.buf.implementation, opts)
					vim.keymap.set("n", prefix .. "s", vim.lsp.buf.signature_help, opts)
					vim.keymap.set("n", prefix .. "h", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", prefix .. "r", vim.lsp.buf.rename, opts)
					vim.keymap.set("n", prefix .. "a", vim.lsp.buf.code_action, opts)
				end
			})
		end
	}
}
