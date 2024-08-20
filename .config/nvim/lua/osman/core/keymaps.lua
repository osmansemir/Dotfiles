-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use ; as :
keymap.set("n", ";", ":", { desc = "use ; as :" })

-- use Leader q to quit a file
keymap.set("n", "<Leader>q", ":q<CR>", { desc = "Quit a file" })

-- use Leader ww to quit a file
keymap.set("n", "<Leader>ww", ":write!<CR>", { desc = "Quit a file" })
--
-- use Leader wq to save and quit a file
keymap.set("n", "<Leader>wq", ":wq<CR>", { desc = "Quit a file" })

-- Panes resizing
keymap.set("n", "+", ":vertical resize +5<CR>", { desc = "vertical resize +" })
keymap.set("n", "_", ":vertical resize -5<CR>", { desc = "vertical resize -" })
keymap.set("n", "=", ":resize +5<CR>", { desc = "horozintal resize +" })
keymap.set("n", "-", ":resize -5<CR>", { desc = "horozintal resize -" })

-- use E and B for $ and ^
keymap.set("n", "E", "$", { desc = "Go to End of line" })
keymap.set("n", "B", "^", { desc = "Go to Start of line" })

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "[S]plit window [V]ertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "[S]plit window [H]orizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make [S]plits [E]qual size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Current [S]plit Close[X]" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "new [T]ab [O]pen " }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "current [T]ab Close[X]" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to [T]ab [N]ext" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to [T]ab [P]revious " }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Moving highlighted down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Moving highlighted up" })

keymap.set("n", "J", "mzJ`z", { desc = "Append the next line to the current one with cursor in middle" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "down motion with cursor in middle" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "up motion with cursor in middle" })

keymap.set("n", "n", "nzzzv", { desc = "Cycle through search results with cursor in middle" })
keymap.set("n", "N", "Nzzzv", { desc = "Cycle backward through search results with cursor in middle" })

keymap.set("x", "<leader>p", [["_dP]], { desc = "Pastes with out yanking" })

keymap.set(
	"n",
	"<leader>sr",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replaces all instances of the word under cursor" }
)
keymap.set("n", "<leader>ex", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Makes the file executable" })

keymap.set("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
keymap.set("i", "<C-e>", "<End>", { desc = "move end of line" })
keymap.set("i", "<C-h>", "<Left>", { desc = "move left" })
keymap.set("i", "<C-l>", "<Right>", { desc = "move right" })
keymap.set("i", "<C-j>", "<Down>", { desc = "move down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "move up" })
