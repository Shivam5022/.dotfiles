function ColorMyPencils(color)
	color = color or "carbonfox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

	-- this is used for changing color of highlight
	vim.api.nvim_set_hl(0, "Visual", { bg = "#52463d" })
end

return {
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			disable_background = true,
	-- 			styles = {
	-- 				italic = false,
	-- 			},
	-- 		})
	-- 		ColorMyPencils("rose-pine")
	-- 	end,
	-- },

	{
		"EdenEast/nightfox.nvim",
		config = function()
			ColorMyPencils("carbonfox")
		end,
	},
}
