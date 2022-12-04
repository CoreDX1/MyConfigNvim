local status, term = pcall(require, "toggleterm")
if not status then
	return
end

term.setup({
	direction = "horizontal",
	size = 10,
	close_on_exit = true, -- close the terminal window when the process exits
	shell = vim.o.shell, -- change the default shell
	float_opts = {
		border = "single",
		width = 100,
		height = 50,
		winblend = 2,
	},
})
