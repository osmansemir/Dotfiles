return {
	"folke/trouble.nvim",
	opts = {
		focus = true, -- Focus the window when opened
		warn_no_results = false, -- show a warning when there are no results
		open_no_results = true, -- open the trouble window when there are no result
	},
	dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
	cmd = "Trouble",
	keys = {
		{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Open/close trouble list" },
		{
			"<leader>xd",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Open trouble document diagnostics",
		},
		{ "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Open trouble quickfix list" },
		{ "<leader>xD", "<cmd>Trouble loclist toggle<cr>", desc = "Open trouble location list" },
		{
			"<leader>xl",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "LSP Definitions / references / ... (Trouble)",
		},
		{
			"<leader>xs",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "Symbols (Trouble)",
		},

		{ "<leader>xt", "<cmd>Trouble todo<CR>", desc = "Open todos in trouble" },
	},
}
