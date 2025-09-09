local function enable_typescript_with_frameworks_lsp()
	local vue_language_server_path = vim.fn.expand("$MASON/packages")
		.. "/vue-language-server"
		.. "/node_modules/@vue/language-server"

	local tsserver_filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }
	local vue_plugin = {
		name = "@vue/typescript-plugin",
		location = vue_language_server_path,
		languages = { "vue" },
		configNamespace = "typescript",
	}

	local ts_ls_config = {
		init_options = {
			plugins = {
				vue_plugin,
			},
		},
		filetypes = tsserver_filetypes,
	}

	vim.lsp.config("ts_ls", ts_ls_config)
	vim.lsp.config("vue_ls", {})
	vim.lsp.enable({ "ts_ls", "vue_ls" })
	vim.lsp.enable("tailwindcss")
end

return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("vimls")
			vim.lsp.enable("gopls")
			enable_typescript_with_frameworks_lsp()

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

					local prefix = "c"

					vim.keymap.set("n", prefix .. "u", vim.lsp.buf.references, {
						buffer = ev.buf,
						desc = "Go to the code usages",
					})

					vim.keymap.set("n", prefix .. "d", vim.lsp.buf.definition, {
						buffer = ev.buf,
						desc = "Go to the code definition",
					})

					vim.keymap.set("n", prefix .. "t", vim.lsp.buf.type_definition, {
						buffer = ev.buf,
						desc = "Go to the code type definition",
					})

					vim.keymap.set("n", prefix .. "i", vim.lsp.buf.implementation, {
						buffer = ev.buf,
						desc = "Go to the code implementation",
					})

					vim.keymap.set("n", prefix .. "s", vim.lsp.buf.signature_help, {
						buffer = ev.buf,
						desc = "Show the code signature",
					})

					vim.keymap.set("n", prefix .. "p", vim.lsp.buf.hover, {
						buffer = ev.buf,
						desc = "Show the preview",
					})

					vim.keymap.set("n", prefix .. "r", vim.lsp.buf.rename, {
						buffer = ev.buf,
						desc = "Rename the code",
					})

					vim.keymap.set("n", prefix .. "a", vim.lsp.buf.code_action, {
						buffer = ev.buf,
						desc = "Show the code action menu",
					})
				end,
			})

			vim.diagnostic.config({
				virtual_text = {
					source = "always", -- Show the source of the diagnostic (e.g., "eslint")
					prefix = "●", -- Customize the prefix symbol
					spacing = 4, -- Space between the diagnostic symbol and the message
				},
				signs = true, -- Show signs in the gutter
				underline = true, -- Underline the problematic code
				update_in_insert = true, -- Don't update diagnostics while typing
				severity_sort = true, -- Sort diagnostics by severity
			})
		end,
		dependencies = {
			-- Automatically install LSPs and related tools to stdpath for Neovim
			-- Mason must be loaded before its dependents so we need to set it up here.
			-- NOTE: `opts = {}` is the same as calling `require('mason').setup({})`
			{ "mason-org/mason.nvim", opts = {} },
			"mason-org/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",

			-- Useful status updates for LSP.
			{ "j-hui/fidget.nvim", opts = {} },

			-- Allows extra capabilities provided by blink.cmp
			"saghen/blink.cmp",
		},
	},
}