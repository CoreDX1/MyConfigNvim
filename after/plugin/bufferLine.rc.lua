vim.opt.termguicolors = true
  require('bufferline').setup {
      options = {
        diagnostics = "nvim_lsp",
        color_icons = false,
        show_buffer_icon = false
      }
    }
