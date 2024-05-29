return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = function(_, opts)
		opts.close_if_last_window = true
		return opts
	end,
	config = function()
		local nvimtree = require("nvim-tree")

		local function my_on_attach(bufnr)
			local api = require("nvim-tree.api")
			local keymap = vim.keymap
			-- default mappings
			api.config.mappings.default_on_attach(bufnr)
			-- custom mappings
			keymap.del("n", "s", { buffer = bufnr }) -- overide default mapping
			keymap.del("n", "o", { buffer = bufnr }) -- overide default mapping
			keymap.set("n", "sv", api.node.open.vertical, { desc = "Open: Vertical Split", buffer = bufnr })
			keymap.set("n", "sh", api.node.open.horizontal, { desc = "Open: Horizontal Split", buffer = bufnr })
			keymap.set("n", "t", api.node.open.tab, { desc = "Open: New Tab", buffer = bufnr })
			keymap.set("n", "o", api.node.run.system, { desc = "Run System", buffer = bufnr })
			keymap.set("n", "?", api.tree.toggle_help, { desc = "Toggle Help", buffer = bufnr })
		end

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			on_attach = my_on_attach,
			view = {
				width = 30,
				relativenumber = true,
				centralize_selection = true,
			},
			-- change folder arrow icons
			renderer = {
				highlight_diagnostics = "icon",
				indent_markers = {
					enable = true,
				},
				icons = {
					web_devicons = { folder = { enable = true } },
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
			diagnostics = {
				enable = true,
			},
			-- disable window_picker for
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		local api = require("nvim-tree.api")

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		) -- toggle file explorer on current file
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}
