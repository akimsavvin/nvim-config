return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/vim-vsnip",
			"hrsh7th/vim-vsnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
		},
		cond = function()
			return not vim.g.vscode
		end,
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body)
					end,
				},
				window = {
					-- completion = cmp.config.window.bordered(),
					-- documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if not cmp.visible() then
							return fallback()
						end

						cmp.select_next_item()
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if not cmp.visible() then
							return fallback()
						end

						cmp.select_prev_item()
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "vsnip" },
				}, {
					{ name = "buffer" },
				}, {
					{ name = "path" },
				}),
			})

			cmp.setup.cmdline(":", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = "cmdline" },
				}),
			})

			cmp.setup.cmdline("/", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = "buffer" },
				},
			})
		end,
	},
}
