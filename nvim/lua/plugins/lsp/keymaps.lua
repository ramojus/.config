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
        else
            desc = 'LSP'
        end
        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
        vim.keymap.set('v', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('gD', vim.lsp.buf.declaration, 'List declarations')
    nmap('gd', require("telescope.builtin").lsp_definitions)
    nmap('gi', require("telescope.builtin").lsp_implementations)
    nmap('gt', require("telescope.builtin").lsp_type_definitions)
    nmap('gr', require("telescope.builtin").lsp_references)
    nmap('<leader>sg', require('telescope.builtin').live_grep, '[S]earch by [G]rep')

    nmap('K', vim.lsp.buf.hover)
    nmap('<C-k>', vim.lsp.buf.signature_help)

    -- 'l' for lsp
    nmap('<leader>lr', vim.lsp.buf.rename)
    nmap('<leader>la', vim.lsp.buf.code_action)
    nmap('<leader>ls', require('telescope.builtin').lsp_document_symbols)
    nvmap('<leader>lf', vim.lsp.buf.format)

    nmap('<leader>lwa', vim.lsp.buf.add_workspace_folder)
    nmap('<leader>lwr', vim.lsp.buf.remove_workspace_folder)
    nmap('<leader>lwl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end)

    -- 'f' for the "fails"
    nmap(']f', vim.diagnostic.goto_next)
    nmap('[f', vim.diagnostic.goto_prev)
    nmap('<leader>fo', vim.diagnostic.open_float)
    nmap('<leader>fl', '<cmd>Telescope diagnostics<CR>')
    nmap('<leader>ft', function()
      vim.diagnostic.enable(not vim.diagnostic.is_enabled())
    end)

end

return set_keymaps
