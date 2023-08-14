local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
	vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
end

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

local icons = require("user.icons")

nvim_tree.setup({
	on_attach = my_on_attach,
	hijack_directories = {
		enable = false,
	},
	-- update_to_buf_dir = {
	--   enable = false,
	-- },
	-- disable_netrw = true,
	-- hijack_netrw = true,
	-- ignore_ft_on_setup = {
	--   "startify",
	--   "dashboard",
	--   "alpha",
	-- },
	filters = {
		custom = { ".git" },
		-- exclude = { ".gitignore" },
	},
	-- auto_close = true,
	-- hijack_cursor = false,
	update_cwd = true,
	-- update_to_buf_dir = {
	--   enable = true,
	--   auto_open = true,
	-- },
	-- --   error
	-- --   info
	-- --   question
	-- --   warning
	-- --   lightbulb
	renderer = {
		add_trailing = false,
		group_empty = false,
		highlight_git = false,
		highlight_opened_files = "none",
		root_folder_modifier = ":t",
		indent_markers = {
			enable = false,
			icons = {
				corner = "└ ",
				edge = "│ ",
				none = "  ",
			},
		},
		icons = {
			webdev_colors = true,
			git_placement = "before",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_open = icons.ui.ArrowOpen,
					arrow_closed = icons.ui.ArrowClosed,
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},
	-- system_open = {
	--   cmd = nil,
	--   args = {},
	-- },
	-- filters = {
	--   dotfiles = false,
	--   custom = {},
	-- },
	git = {
		enable = true,
		-- ignore = true,
		timeout = 500,
	},
	view = {
		width = 25,
		-- height = 30,
		hide_root_folder = false,
		side = "left",
		-- auto_resize = true,
		number = false,
		relativenumber = false,
	},
})
