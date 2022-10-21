local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

local mocha = require("catppuccin.palettes").get_palette "mocha"

bufferline.setup({
  options = {
    -- mode = "tabs",
    separator_style = { " ", " " },
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    indicator = { style = "icon", icon = "│" },
  },
  highlights = {
    separator = {
      fg = '',
      bg = '',
    },
    separator_selected = {
      fg = '',
    },
    background = {
      fg = '',
      bg = ''
    },
    buffer_selected = {
      fg = '#fdf6e3',
      -- bold = true,
    },
    fill = {
      bg = ''
    }
  },
})
