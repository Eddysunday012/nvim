vim.keymap.set(
	"n",
	"<leader>fd",
	":vsplit | lua vim.lsp.buf.definition()<CR>",
	{ desc = "Open definition in vertical split" }
)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
