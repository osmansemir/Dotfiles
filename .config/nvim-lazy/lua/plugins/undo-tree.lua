return {
  "mbbill/undotree",
  vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle, { desc = "Toggle [U]ndo Tree" }),
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_SplitWidth = 35
    vim.g.persistent_undo = 1
    vim.g.undotree_ShortIndicators = 1
  end,
}
