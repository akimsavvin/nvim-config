return {
	{
		"navarasu/onedark.nvim",
		cond = function()
			return not vim.g.vscode
		end,
		config = function()
			local onedark = require("onedark")
			onedark.setup({ transaprent = true })
			onedark.load()
		end
	}
}
