return {
	"eandrju/cellular-automaton.nvim",
	config = function()
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>xa", "<cmd>CellularAutomaton make_it_rain<cr>", { desc = "Make it rain" })
		keymap.set("n", "<leader>xb", "<cmd>CellularAutomaton game_of_life<cr>", { desc = "Make it rain" })
	end,
}
