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
    lsp_saga = true,
  },
})
-- vim.cmd("colorscheme tokyodark")
local colorscheme = "catppuccin"
-- vim.cmd("colorscheme gruvbox")
-- require("tokyonight").setup({
--   -- your configuration comes here
--   -- or leave it empty to use the default settings
--   style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--   light_style = "day", -- The theme is used when the background is set to light
--   transparent = true, -- Enable this to disable setting the background color
--   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--   styles = {
--     -- Style to be applied to different syntax groups
--     -- Value is any valid attr-list value for `:help nvim_set_hl`
--     comments = { italic = true },
--     keywords = { italic = true },
--     functions = {},
--     variables = {},
--     -- Background styles. Can be "dark", "transparent" or "normal"
--     sidebars = "transparent", -- style for sidebars, see below
--     floats = "transparent", -- style for floating windows
--   },
--   -- sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--   day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--   hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--   dim_inactive = false, -- dims inactive windows
--   lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
-- })
-- local colorscheme = "tokyonight"
-- vim.cmd [[colorscheme catppuccin]]

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
-- vim.cmd [[hi Normal guibg=None ctermbg=None]]
