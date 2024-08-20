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
			"<a-1>",
			':lua require("harpoon.ui").nav_file(1)<CR>',
			{ desc = "Navigate to File 1 in Harpoon Menu" }
		)
		keymap.set(
			"n",
			"<a-2>",
			':lua require("harpoon.ui").nav_file(2)<CR>',
			{ desc = "Navigate to File 2 in Harpoon Menu" }
		)
		keymap.set(
			"n",
			"<a-3>",
			':lua require("harpoon.ui").nav_file(3)<CR>',
			{ desc = "Navigate to File 3 in Harpoon Menu" }
		)
		keymap.set(
			"n",
			"<a-4>",
			':lua require("harpoon.ui").nav_file(4)<CR>',
			{ desc = "Navigate to File 4 in Harpoon Menu" }
		)
		keymap.set(
			"n",
			"<a-j>",
			':lua require("harpoon.ui").nav_prev()<CR>',
			{ desc = "Navigate to Previous File in Harpoon Menu" }
		)
		keymap.set(
			"n",
			"<a-k>",
			':lua require("harpoon.ui").nav_next()<CR>',
			{ desc = "Navigate to next File in Harpoon Menu" }
		)
	end,
}
