return {
	"nvim-telescope/telescope.nvim",
	cond = function()
		return not vim.g.vscode
	end,
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup()

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find file" })
		vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Find word" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffer" })
	end,
}