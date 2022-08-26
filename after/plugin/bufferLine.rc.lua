vim.opt.termguicolors = true
require('bufferline').setup {
    options = {
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = true,
        color_icons = true,
        show_buffer_icon = true,
        close_icon = '',
        show_tab_indicators = true
    }
}
