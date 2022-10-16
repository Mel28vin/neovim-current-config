local colorscheme = "onedark"
-- vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha

-- require("catppuccin").setup()
-- local colorscheme = "catppuccin"

-- vim.cmd [[colorscheme catppuccin]]

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
vim.cmd [[hi Normal guibg=None ctermbg=None]]
