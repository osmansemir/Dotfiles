return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dap.adapters.lldb = {
			type = "executable",
			command = "/usr/bin/lldb-vscode", -- adjust as needed, must be absolute path
			name = "lldb",
		}

		dap.configurations.cpp = {
			{
				name = "Launch",
				type = "lldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				args = {},
			},
		}

		dap.configurations.c = dap.configurations.cpp
		dap.configurations.rust = dap.configurations.cpp

		-- DAP UI Setup
		dapui.setup()
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		--[[ dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end ]]

		-- Keybindings
		local keymap = vim.keymap
		keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { desc = "Toggle Breakpoint" })
		keymap.set("n", "<leader>dc", ":DapContinue<CR>", { desc = "Debugger Continue" })
		keymap.set("n", "<leader>do", ":DapStepOver<CR>", { desc = "Debugger Step Over" })
		keymap.set("n", "<leader>di", ":DapStepInto<CR>", { desc = "Debugger Step Into" })
		keymap.set("n", "<leader>dt", '<cmd>lua require("dapui").toggle()<CR>', { desc = "Toggle Dap UI" })
	end,
}
