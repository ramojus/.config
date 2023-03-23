local function set_keymaps(bufnr)
    local nmap = function(keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        end
        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end
    local nvmap = function(keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        end
        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
        vim.keymap.set('v', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('gD', vim.lsp.buf.declaration)
    nmap('gd', require("telescope.builtin").lsp_definitions)
    nmap('gi', require("telescope.builtin").lsp_implementations)
    nmap('gt', require("telescope.builtin").lsp_type_definitions)
    nmap('gr', require("telescope.builtin").lsp_references)
    nmap('<leader>sg', require('telescope.builtin').live_grep, '[S]earch by [G]rep')

    nmap('K', vim.lsp.buf.hover)
    nmap('<C-k>', vim.lsp.buf.signature_help)

    nmap('<leader>lr', vim.lsp.buf.rename)
    nmap('<leader>la', '<cmd>CodeActionMenu<CR>')
    nmap('<leader>ls', require('telescope.builtin').lsp_document_symbols)
    nvmap('<leader>lf', vim.lsp.buf.format)

    nmap('<leader>lwa', vim.lsp.buf.add_workspace_folder)
    nmap('<leader>lwr', vim.lsp.buf.remove_workspace_folder)
    nmap('<leader>lwl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end)

    nmap(']d', vim.diagnostic.goto_next)
    nmap('[d', vim.diagnostic.goto_prev)
    nmap('<leader>dl', '<cmd>Telescope diagnostics<CR>')

    nmap('<leader>R', [[:LspStop<CR>:LspStart<CR>]])
end

return set_keymaps
