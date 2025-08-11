return {
	{
		"navarasu/onedark.nvim",
		config = function()
			local onedark = require("onedark")
			onedark.setup({ transaprent = true })
			onedark.load()
		end
	}
}
