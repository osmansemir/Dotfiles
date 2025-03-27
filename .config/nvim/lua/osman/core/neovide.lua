local neovideConfig = function()
	if vim.g.neovide then
		vim.o.guifont = "JetBrainsMono Nerd Font:h14"
		vim.g.neovide_padding_top = 0
		vim.g.neovide_padding_bottom = 0
		vim.g.neovide_padding_right = 0
		vim.g.neovide_padding_left = 0
		vim.g.neovide_cursor_vfx_mode = "sonicboom"
		vim.g.neovide_hide_mouse_when_typing = false
	end
end

neovideConfig()
