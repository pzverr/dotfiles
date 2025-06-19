local dap = require("dap")
local widgets = require("dap.ui.widgets")

dap.adapters.codelldb = {
	type = "server",
	port = "${port}",
	executable = {
		command = vim.fn.exepath("codelldb"),
		args = { "--port", "${port}" },
	},
}

dap.configurations.c = {
	{
		type = "codelldb",
		request = "launch",
		name = "Launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
	},
}

dap.configurations.cpp = dap.configurations.c

dap.configurations.rust = {
	{
		type = "codelldb",
		request = "launch",
		name = "Launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
		end,
		cwd = "${workspaceFolder}",
	},
}

vim.keymap.set("n", "<F5>", function()
	dap.continue()
end)
vim.keymap.set("n", "<Leader>b", function()
	dap.toggle_breakpoint()
end)
vim.keymap.set({ "n", "v" }, "<Leader>p", function()
	widgets.hover()
end)
