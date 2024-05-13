return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"jay-babu/mason-nvim-dap.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		local mason_dap = require("mason-nvim-dap")
		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
				"clangd",
			},
		})

		-- mason_dap.setup({
		-- 	ensure_installed = { "codelldb" }, -- Ensure LLDB is installed
		-- 	handlers = {
		-- 		function(config)
		-- 	 Generic handler for all sources with no specific handler
		-- 			-- Keep original functionality
		-- 			require("mason-nvim-dap").default_setup(config)
		-- 		end,
		-- 		codelldb = function(config)
		-- 			-- Handler for C debugger with LLDB
		-- 			config.adapters = {
		-- 				type = "executable",
		-- 				command = "/usr/bin/lldb", -- Use LLDB as the adapter
		-- 				name = "lldb",
		-- 				args = {
		-- 					"-o",
		-- 					"breakpoint set --file ${file}",
		-- 					"-o",
		-- 					"run",
		-- 					"-o",
		-- 					"breakpoint delete 1",
		-- 					"${file}",
		-- 				},
		-- 			}
		-- 			require("mason-nvim-dap").default_setup(config)
		-- 		end,
		-- 	},
		-- })

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint", -- python linter
				"eslint_d", -- js linter
			},
		})
	end,
}
