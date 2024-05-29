return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.gruvbox_material_enable_italic = true
		vim.g.gruvbox_material_cursor = "orange"
		-- vim.g.gruvbox_material_background = "hard" -- Available values: 'hard', 'medium'(default), 'soft'
		vim.g.gruvbox_material_foreground = "mix" -- Available values:  'material'(default), 'mix', 'original'
		vim.g.gruvbox_material_better_performance = 1
		vim.g.gruvbox_material_transparent_background = 0 -- Available values: 0, 1, 2
		vim.g.gruvbox_material_dim_inactive_windows = 1
		vim.g.gruvbox_material_visual = "green background"
		vim.g.gruvbox_material_menu_selection_background = "green"
		vim.g.gruvbox_material_float_style = "dim"
		vim.g.gruvbox_material_diagnostic_text_highlight = 1
		vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
		vim.g.gruvbox_material_current_word = "bold"
		vim.g.gruvbox_material_enable_bold = 1

		vim.cmd.colorscheme("gruvbox-material")
	end,
}
