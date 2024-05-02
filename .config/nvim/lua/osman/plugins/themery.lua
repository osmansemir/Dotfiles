return{
  "zaldih/themery.nvim",
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
        }
      }, -- Your list of installed colorschemes
      themeConfigFile = "~/.config/nvim/lua/osman/core/theme.lua", -- Described below
      livePreview = true, -- Apply theme while browsing. Default to true.
    })
  end,
}
