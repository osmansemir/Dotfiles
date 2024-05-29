return {
	"Wansmer/treesj",
	config = function()
		require("treesj").setup({})
		-- For default preset
		vim.keymap.set("n", "<leader>[", require("treesj").toggle, { desc = "toggle split join" })
		-- For extending default preset with `recursive = true`
		vim.keymap.set("n", "<leader>{", function()
			require("treesj").toggle({ split = { recursive = true }, { desc = "toggle split join recursive" } })
		end)
	end,
}
