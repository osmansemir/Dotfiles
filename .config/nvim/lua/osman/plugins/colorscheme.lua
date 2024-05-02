return{
  "ellisonleao/gruvbox.nvim",
  priority = 1000,

  config = function()
              require("gruvbox").setup({
                style = "dark",
              })
              vim.cmd("colorscheme gruvbox")
            end,
},
{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}
