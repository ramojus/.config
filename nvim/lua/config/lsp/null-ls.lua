local null_ls = require'null-ls'

null_ls.setup({
    sources = {
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#available-sources
        -- null_ls.builtins.diagnostics.cppcheck,
    },
})
