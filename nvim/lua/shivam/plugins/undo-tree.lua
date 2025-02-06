return {
	"mbbill/undotree",
	cmd = "UndotreeToggle",
	vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { desc = "Toggle undo tree" }),
}
