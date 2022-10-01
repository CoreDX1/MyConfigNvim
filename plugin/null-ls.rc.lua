local null_ls = require("null-ls")
local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

-- register any number of sources simultaneously
local sources = {
    null_ls.builtins.formatting.csharpier.with({
        name = "csharpier",
        meta = {
            url = "https://csharpier.com/",
            description = "CSharpier is an opinionated code formatter for c#",
        },
        method = FORMATTING,
        filetypes = { "cs" },
        generator_opts = {
            command = "dotnet-csharpier",
            args = {
                "--write-stdout",
            },
            to_stdin = true,
        },
        factory = h.formatter_factory,
    }),
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()")
        end
        vim.cmd [[
      augroup document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]]
    end
}

null_ls.setup({ sources = sources })
