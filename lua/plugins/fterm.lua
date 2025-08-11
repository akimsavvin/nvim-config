return {
  {
    "numToStr/fterm.nvim",
    config = function()
      local fterm = require("FTerm")
      fterm.setup({
        border = "single",  -- Border style (e.g., "single", "double", "rounded")
        dimensions = {
          height = 0.65,
          width = 0.6,
        },
      })

      vim.keymap.set("n", "t", fterm.open)
      vim.keymap.set("t", "<Esc>", fterm.close)
      vim.keymap.set("t", "<c-x>", fterm.exit)
    end,
  },
}
