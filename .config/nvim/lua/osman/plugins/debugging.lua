return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"mxsdev/nvim-dap-vscode-js",
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = "${port}",
			executable = {
				command = "node",
				-- 💀 Make sure to update this path to point to your installation
				args = {
					"/home/osmansemir/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
					"${port}",
				},
			},
		}

		for _, language in ipairs({ "typescript", "javascript" }) do
			dap.configurations[language] = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch file",
					program = "${file}",
					cwd = "${workspaceFolder}",
				},
				{
					type = "pwa-node",
					request = "attach",
					name = "Attach",
					processId = require("dap.utils").pick_process,
					cwd = "${workspaceFolder}",
				},
			}
		end

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
		keymap.set("n", "<leader>dr", '<cmd>lua require("dap").restart()<CR>', { desc = "Restart Session" })
		keymap.set("n", "<leader>dx", '<cmd>lua require("dap").disconnect()<CR>', { desc = "Disconnect Session" })
		keymap.set("n", "<leader>dq", '<cmd>lua require("dap").disconnect()<CR>', { desc = "Clear Breakpoints" })
		keymap.set("n", "<leader>dc", ":DapContinue<CR>", { desc = "Debugger Continue" })
		keymap.set("n", "<leader>do", ":DapStepOver<CR>", { desc = "Debugger Step Over" })
		keymap.set("n", "<leader>di", ":DapStepInto<CR>", { desc = "Debugger Step Into" })
		keymap.set("n", "<leader>dt", '<cmd>lua require("dapui").toggle()<CR>', { desc = "Toggle Dap UI" })
		dap.restart()
	end,
}
