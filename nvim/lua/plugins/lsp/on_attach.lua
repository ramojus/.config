local function lsp_highlight_document(client)
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_exec([[
        augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
        ]], false)
    end
end

local function on_attach(client, bufnr)
    require'plugins.lsp.keymaps'(bufnr)
    lsp_highlight_document(client)
    -- require 'nvim-navic'.attach(client, bufnr)
end

return on_attach
