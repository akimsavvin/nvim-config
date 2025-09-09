return {
	{
		"tpope/vim-fugitive",
		cond = function()
			return not vim.g.vscode
		end,
		init = function()
			-- all keymaps must start with prefix "<leader>g(it)"
			local keymap_prefix = "<leader>g"
			vim.keymap.set("n", keymap_prefix.."p", ":G pull<CR>", { desc = "Git pull" })
			vim.keymap.set("n", keymap_prefix.."P", ":G push<CR>", { desc = "Git push" })
			vim.keymap.set("n", keymap_prefix.."a", ":G add -A<CR>", { desc = "Git add all" })
			vim.keymap.set("n", keymap_prefix.."c", ":G commit -m ", { desc = "Git commit message" })
			vim.keymap.set("n", keymap_prefix.."m", ":G<CR>", { desc = "Open git menu" })
		end
	}
}
