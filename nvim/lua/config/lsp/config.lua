local signs = {
    -- { name = "DiagnosticSignError", text = "" },
    -- { name = "DiagnosticSignWarn", text = "" },
    -- { name = "DiagnosticSignHint", text = "" },
    -- { name = "DiagnosticSignInfo", text = "" },
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

vim.diagnostic.config({
    -- disable virtual text
    virtual_text = {
        spacing = 6,
        prefix = "●",
    },
    -- show signs
    signs = {
        active = signs,
    },
    update_in_insert = true,
    underline = true,
    everity_sort = true,
})
