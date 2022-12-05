local status, tree = pcall(require, "nvim-tree")
if not status then
	return
end

tree.setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		side = "right",
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
		icons = {
			webdev_colors = true,
			git_placement = "before",
			padding = "  ",
			symlink_arrow = " ➛ ",
			show = {
				file = false,
				folder = false,
				folder_arrow = true,
				git = true,
			},
		},
	},
	filters = {
		dotfiles = true,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		debounce_delay = 50,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
})
