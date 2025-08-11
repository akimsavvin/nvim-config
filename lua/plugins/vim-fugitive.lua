return {
	{
		"tpope/vim-fugitive",
		init = function()
			-- all keymaps must start with prefix "<leader>g(it)"
			local keymap_prefix = "<leader>g"
			vim.keymap.set("n", keymap_prefix.."p", ":G pull<CR>") -- Pull
			vim.keymap.set("n", keymap_prefix.."P", ":G push<CR>") -- Push
			vim.keymap.set("n", keymap_prefix.."a", ":G add -A<CR>") -- Add
			vim.keymap.set("n", keymap_prefix.."c", ":G commit -m ") -- Commit
			vim.keymap.set("n", keymap_prefix.."m", ":G<CR>") -- Menu
		end
	}
}
