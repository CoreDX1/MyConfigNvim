vim.opt.termguicolors = true

local status, buffer = pcall(require, "bufferline")
if not status then
	return
end

buffer.setup({
	options = {
		diagnostics = true,
		diagnostics_update_in_insert = true,
		color_icons = true,
		show_buffer_icon = true,
		close_icon = "",
		show_tab_indicators = true,
	},
})
