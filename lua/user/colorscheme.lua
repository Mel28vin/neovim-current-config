-- local colorscheme = "onedark"
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
--
require("catppuccin").setup({
  term_colors = true,
  transparent_background = true,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
    which_key = true,
    -- lsp_saga = true,
  },
})
local colorscheme = "catppuccin"

-- vim.cmd [[colorscheme catppuccin]]

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
-- vim.cmd [[hi Normal guibg=None ctermbg=None]]
