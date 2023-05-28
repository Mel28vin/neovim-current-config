local fn = vim.fn

-- Automatically install lazy
local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Install your plugins here
require("lazy").setup({
  -- My plugins here
  "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
  "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
  { "numToStr/Comment.nvim", commit = "006724e38c244c3128b2840ea40bd61dd6c419f0" },
  "nvim-tree/nvim-web-devicons",
  "kyazdani42/nvim-tree.lua",
  "akinsho/bufferline.nvim",
  {"moll/vim-bbye", cmd = { "Bdelete", "Bwipeout"},},
  "nvim-lualine/lualine.nvim",
  "akinsho/toggleterm.nvim",
  "ahmedkhalf/project.nvim",
  "lewis6991/impatient.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "goolord/alpha-nvim",
  "ThePrimeagen/harpoon",
  -- { "norcalli/nvim-colorizer.lua", ft = { "css" } },
  {
    "mbbill/undotree",
    cmd = { "UndotreeShow", "UndotreeToggle", "UndotreeHide", "UndotreeFocus" },
  },
  -- Colorschemes
  -- use("lunarvim/colorschemes") -- A bunch of colorschemes you can try out
  "rafi/awesome-vim-colorschemes",
{ "navarasu/onedark.nvim", priority = 1000 , lazy = false, enabled = true},
  "folke/tokyonight.nvim",
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = {"Neotree"},
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  },
  -- snippets
  "L3MON4D3/LuaSnip", --snippet engine
  "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  -- LSP
  "neovim/nvim-lspconfig", -- enable LSP
  -- "williamboman/nvim-lsp-installer", -- simple to use language server installer
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
  "RRethy/vim-illuminate",
  "folke/which-key.nvim",
 {
    "glepnir/lspsaga.nvim",
    branch = "main",
    -- commit = "ba8ad94b42a9a807c2ab0b4545c098f0b513f3f4"
  },

  -- CMP
  {
    "hrsh7th/nvim-cmp",
    -- commit = "dbc72290295cfc63075dab9ea635260d2b72f2e5",
  },
  "hrsh7th/cmp-buffer", -- buffer completions
  "hrsh7th/cmp-path", -- path completions
  "hrsh7th/cmp-cmdline", -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-emoji",
  "hrsh7th/cmp-nvim-lua",

  -- Java
  "mfussenegger/nvim-jdtls",

  -- Telescope
  "nvim-telescope/telescope.nvim",

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  "JoosepAlviste/nvim-ts-context-commentstring",
  "windwp/nvim-ts-autotag",

  -- Git
  "lewis6991/gitsigns.nvim",

  -- DAP
  -- "mfussenegger/nvim-dap")
  -- "rcarriga/nvim-dap-ui")
  -- "Pocco81/DAPInstall.nvim")

  -- use("ThePrimeagen/vim-be-good")
  "karb94/neoscroll.nvim",
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  -- if PACKER_BOOTSTRAP then
  --   require("packer").sync()
  -- end
},{
 defaults = { lazy = true },
 install = { colorscheme = { "catppuccin" } },
 -- checker = { enabled = true },
 change_detection = {
  notify = false,
 },
 performance = {
  rtp = {
   disabled_plugins = {
    "gzip",
    "matchit",
    "matchparen",
    "netrwPlugin",
    "tarPlugin",
    "tohtml",
    "tutor",
    "zipPlugin",
   },
  },
 },
} )
