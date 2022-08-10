require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "javascript", },

  sync_install = false,

  auto_install = true,
  ignore_install = {},
  highlight = {
    enable = true,
    disable = { "c" },
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

