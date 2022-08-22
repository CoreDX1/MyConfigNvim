require 'nvim-treesitter.configs'.setup {
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
        config = {
            tsx = {
                __default = '// %s',
                __multiline = '/* %s */',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = { __default = '// %s', __multiline = '/* %s */' },
                comment = { __default = '// %s', __multiline = '/* %s */' },
                call_expression = { __default = '// %s', __multiline = '/* %s */' },
                statement_block = { __default = '// %s', __multiline = '/* %s */' },
                spread_element = { __default = '// %s', __multiline = '/* %s */' },
            },
        }
    }
}
