return {
	"zaldih/themery.nvim",
	dependencies = {
		"ellisonleao/gruvbox.nvim",
		"folke/tokyonight.nvim",
		"navarasu/onedark.nvim",
	},
	config = function()
		local themery = require("themery")

		themery.setup({
			themes = {
				{
					name = "Gruvbox dark",
					colorscheme = "gruvbox",
					before = [[vim.opt.background = "dark"]],
				},
				{
					name = "Gruvbox light",
					colorscheme = "gruvbox",
					before = [[vim.opt.background = "light"]],
				},
				{
					name = "Tokyonight Moon",
					colorscheme = "tokyonight-moon",
				},
				{
					name = "Tokyonight Night",
					colorscheme = "tokyonight-night",
				},
				{
					name = "Tokyonight Storm",
					colorscheme = "tokyonight-storm",
				},
				{
					name = "Tokyonight Day",
					colorscheme = "tokyonight-day",
				},
			}, -- Your list of installed colorschemes
			themeConfigFile = "~/.config/nvim/lua/osman/core/theme.lua", -- Described below
			livePreview = true, -- Apply theme while browsing. Default to true.
		})
	end,
}
