return {
	"echasnovski/mini.move",
	version = "*",
	config = function()
		require("mini.move").setup({
			mappings = {
				-- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
				left = "H",
				right = "L",
				down = "J",
				up = "K",

				-- Move current line in Normal mode
				line_left = "<S-left>",
				line_right = "<S-right>",
				line_down = "<S-down>",
				line_up = "<S-up>",
			},
		})
	end,
}
