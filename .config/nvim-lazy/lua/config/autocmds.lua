-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "oil",
  callback = function()
    vim.b.completion = false
  end,
})

-- Neovide config
local neovideConfig = function()
  if vim.g.neovide then
    vim.o.guifont = "JetBrainsMono Nerd Font:h12"
    vim.g.neovide_padding_top = 2
    vim.g.neovide_padding_bottom = 0
    vim.g.neovide_padding_right = 1
    vim.g.neovide_padding_left = 1
    vim.g.neovide_cursor_vfx_mode = "pixiedust"
    vim.g.neovide_hide_mouse_when_typing = false
    vim.g.neovide_cursor_animate_in_insert_mode = false
  end
end

neovideConfig()
