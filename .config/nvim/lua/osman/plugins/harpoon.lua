return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup({})
		local keymap = vim.keymap

		keymap.set(
			"n",
			"<leader>rr",
			':lua require("harpoon.ui").toggle_quick_menu()<CR>',
			{ desc = "Toggle Harpoon Menu" }
		)
		keymap.set(
			"n",
			"<leader>rm",
			':lua require("harpoon.mark").add_file()<CR>',
			{ desc = "Add File to Harpoon Menu" }
		)
		keymap.set(
			"n",
			"<leader>r1",
			':lua require("harpoon.ui").nav_file(1)<CR>',
			{ desc = "Navigate to File 1 in Harpoon Menu" }
		)
		keymap.set(
			"n",
			"<leader>r2",
			':lua require("harpoon.ui").nav_file(2)<CR>',
			{ desc = "Navigate to File 2 in Harpoon Menu" }
		)
		keymap.set(
			"n",
			"<leader>r3",
			':lua require("harpoon.ui").nav_file(3)<CR>',
			{ desc = "Navigate to File 3 in Harpoon Menu" }
		)
		keymap.set(
			"n",
			"<leader>r4",
			':lua require("harpoon.ui").nav_file(4)<CR>',
			{ desc = "Navigate to File 4 in Harpoon Menu" }
		)
	end,
}
