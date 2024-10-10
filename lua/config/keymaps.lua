local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.keymap.set({ "n", "v" }, "<leader>]", ":Gen<CR>")
vim.keymap.set("n", "-", function()
	local reveal_file = vim.fn.expand("%:p")
	if reveal_file == "" then
		reveal_file = vim.fn.getcwd()
	else
		local f = io.open(reveal_file, "r")
		if f then
			f.close(f)
		else
			reveal_file = vim.fn.getcwd()
		end
	end
	require("neo-tree.command").execute({
		action = "focus", -- OPTIONAL, this is the default value
		source = "filesystem", -- OPTIONAL, this is the default value
		position = "current", -- OPTIONAL, this is the default value
		toggle = true,
		reveal_file = reveal_file, -- path to file or folder to reveal
		reveal_force_cwd = true, -- change cwd without asking if needed
	})
end, { desc = "Open neo-tree at current file or working directory" })

vim.keymap.set("n", "<leader>e", function()
	local reveal_file = vim.fn.expand("%:p")
	if reveal_file == "" then
		reveal_file = vim.fn.getcwd()
	else
		local f = io.open(reveal_file, "r")
		if f then
			f.close(f)
		else
			reveal_file = vim.fn.getcwd()
		end
	end
	require("neo-tree.command").execute({
		action = "focus", -- OPTIONAL, this is the default value
		source = "filesystem", -- OPTIONAL, this is the default value
		position = "right", -- OPTIONAL, this is the default value
		toggle = true,
		reveal_file = reveal_file, -- path to file or folder to reveal
		reveal_force_cwd = true, -- change cwd without asking if needed
	})
end, { desc = "Open neo-tree at current file or working directory" })
