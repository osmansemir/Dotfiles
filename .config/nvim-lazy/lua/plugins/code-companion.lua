return {
  "olimorris/codecompanion.nvim",
  cmd = {
    "CodeCompanion",
    "CodeCompanionActions",
    "CodeCompanionChat",
    "CodeCompanionCmd",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      ft = { "codecompanion" },
    },
  },
  -- Add a `keys` table for lazy-loading and convenience
  keys = {
    { "<leader>ap", "<cmd>CodeCompanion<CR>", desc = "CodeCompanion (ask about current buffer)" },
    {
      "<leader>as",
      "<cmd>CodeCompanion 'Please explain the selected code.'<CR>",
      mode = "v",
      desc = "CodeCompanion (explain selection)",
    },
    { "<leader>ac", "<cmd>CodeCompanionActions<CR>", mode = { "n", "v" }, desc = "CodeCompanion Actions" },
    { "<leader>aa", "<cmd>CodeCompanionChat Toggle<CR>", desc = "CodeCompanion Chat (Toggle)" },
    { "<leader>ad", "<cmd>CodeCompanionChat Add<CR>", desc = "Add visually selected chat to the current chat buffer" },
  },
  opts = {
    strategies = {
      chat = {
        adapter = "gemini",
      },
      inline = {
        adapter = "gemini",
      },
      variables = {
        ["buffer"] = {
          opts = {
            default_params = "pin", -- or 'watch'
          },
        },
        ["viewport"] = { -- Add this block
          opts = {
            default_params = "pin",
          },
        },
      },
    },
    gemini = function()
      return require("codecompanion.adapters").extend("gemini", {
        schema = {
          model = {
            default = "gemini-2.5-flash-preview-05-20",
          },
        },
        env = {
          api_key = "GEMINI_API_KEY",
        },
      })
    end,
    display = {
      diff = {
        provider = "mini_diff",
      },
    },
  },
}
