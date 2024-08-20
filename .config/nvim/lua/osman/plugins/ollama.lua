return {
	"David-Kunz/gen.nvim",

	config = function()
		require("gen").setup({
			model = "codellama",
			show_model = true,
			show_prompt = true,
			vim.keymap.set({ "n", "v" }, "<leader>o", ":Gen<CR>", { desc = "Generate code from model" }),
		})
	end,
}
