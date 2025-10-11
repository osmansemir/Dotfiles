-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap -- for conciseness

-- use Leader q to quit a file
keymap.set("n", "<Leader>q", ":quit<CR>", { noremap = true, silent = true, desc = "Quit a file" })
keymap.set("n", "C-q", ":quit<CR>", { noremap = true, silent = true, desc = "Quit a file" })

-- use Leader wq to save and quit a file
keymap.set("n", "<Leader>wq", ":wq<CR>", { noremap = true, silent = true, desc = "Save and Quit" })
keymap.set("n", "<leader>wa", ":wa<CR>", { noremap = true, silent = true, desc = "Write all files" })

-- use Leader ww to quit a file
keymap.set("n", "<Leader>ww", ":write!<CR>", { noremap = true, silent = true, desc = "Save file" })

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "Exit insert mode with jk" })

-- use E and B for $ and ^
keymap.set("n", "E", "$", { desc = "Go to End of line" })
keymap.set("n", "B", "^", { desc = "Go to Start of line" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Select all with C-a
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })
vim.keymap.set("n", "<C-c>", "+y", { desc = "Copy to clipboard" })

-- Cycle through search results with cursor in middle
keymap.set("n", "n", "nzzzv", { desc = "Cycle through search results with cursor in middle" })
keymap.set("n", "N", "Nzzzv", { desc = "Cycle backward through search results with cursor in middle" })

keymap.set("x", "<leader>p", [["_dP]], { desc = "Pastes with out yanking" })

-- window management
keymap.set("n", "<leader>s|", "<C-w>v", { desc = "[S]plit window [V]ertically" }) -- split window vertically
keymap.set("n", "<leader>s-", "<C-w>s", { desc = "[S]plit window [H]orizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make [S]plits [E]qual size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Current [S]plit Close[X]" }) -- close current split window
Snacks.toggle.zoom():map("<leader>wm"):map("<leader>sz")

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "new [T]ab [O]pen " }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "current [T]ab Close[X]" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to [T]ab [N]ext" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to [T]ab [P]revious " }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- deleting keymaps
-- keymap.del("n", "<leader>qq")
