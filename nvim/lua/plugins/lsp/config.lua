vim.diagnostic.config({
    -- disable virtual text
    virtual_text = {
        spacing = 6,
        prefix = '',
    },
    -- show signs
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '',
            [vim.diagnostic.severity.INFO] = '',
        },
    },
    update_in_insert = true,
    underline = true,
    everity_sort = true,
})
