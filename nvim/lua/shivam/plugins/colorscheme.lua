return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require('rose-pine').setup({
      disable_background = true,
      styles = {
        italic = false,
      },
    })
    vim.cmd("colorscheme rose-pine")

    -- Set transparency for all relevant highlight groups
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
  end
}
