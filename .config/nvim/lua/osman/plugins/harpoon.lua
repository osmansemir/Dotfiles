return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local harpoon = require("harpoon")
		harpoon.setup({})

		local keymap = vim.keymap

		keymap.set("n", "<leader>rr", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle Harpoon Menu" })

		keymap.set("n", "<leader>rm", function()
			harpoon:list():add()
		end, { desc = "Add File to Harpoon Menu" })

		keymap.set("n", "<a-1>", function()
			harpoon:list():select(1)
		end, { desc = "Navigate to File 1 in Harpoon Menu" })

		keymap.set("n", "<a-2>", function()
			harpoon:list():select(2)
		end, { desc = "Navigate to File 2 in Harpoon Menu" })

		keymap.set("n", "<a-3>", function()
			harpoon:list():select(3)
		end, { desc = "Navigate to File 3 in Harpoon Menu" })

		keymap.set("n", "<a-4>", function()
			harpoon:list():select(4)
		end, { desc = "Navigate to File 4 in Harpoon Menu" })

		keymap.set("n", "<a-j>", function()
			harpoon:list():prev()
		end, { desc = "Navigate to Previous File in Harpoon Menu" })

		keymap.set("n", "<a-k>", function()
			harpoon:list():next()
		end, { desc = "Navigate to next File in Harpoon Menu" })
	end,
}
