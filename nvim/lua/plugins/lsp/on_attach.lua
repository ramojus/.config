-- This function resolves a difference between neovim version 0.11 and version 0.10
---@param client vim.lsp.Client
---@param method vim.lsp.protocol.Method
---@param bufnr? integer some lsp support methods only in specific files
---@return boolean
local function client_supports_method(client, method, bufnr)
    if vim.fn.has 'nvim-0.11' == 1 then
        return client:supports_method(method, bufnr)
    else
        return client.supports_method(method, { bufnr = bufnr })
    end
end

local function set_keymaps(attachEvent)
    local bufnr = attachEvent.buf
    vim.notify("setting up keymaps")
    local nmap = function(keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        else
            desc = 'LSP'
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

    local picker = require("fzf-lua")

    nmap('gD', picker.lsp_declarations, 'show declarations')
    nmap('gd', picker.lsp_definitions, 'show definitions')
    nmap('gi', picker.lsp_implementations, 'show implementations')
    nmap('gt', picker.lsp_typedefs, 'show typedefs')
    nmap('gr', picker.lsp_references, 'show references')

    nmap('K', vim.lsp.buf.hover, 'hover symbol')
    nmap('<C-k>', vim.lsp.buf.signature_help, 'show signature help')

    -- 'l' for lsp
    nmap('<leader>lr', vim.lsp.buf.rename, 'rename symbol')
    nmap('<leader>la', picker.lsp_code_actions, 'list code actions')
    nmap('<leader>ls', picker.lsp_document_symbols, 'list document symbols')
    nvmap('<leader>lf', function() require("conform").format({ bufnr = bufnr }) end, 'format buffer')

    nmap('<leader>lwa', vim.lsp.buf.add_workspace_folder, 'add workspace folder')
    nmap('<leader>lwr', vim.lsp.buf.remove_workspace_folder, 'remove workspace folder')
    nmap('<leader>lwl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, 'list workspace folders')

    local diagnostic = '"fail"'
    local diagnostics = '"fails"'
    nmap(']f', vim.diagnostic.goto_next, 'next ' .. diagnostic)
    nmap('[f', vim.diagnostic.goto_prev, 'prev ' .. diagnostic)
    nmap('<leader>fo', vim.diagnostic.open_float, 'open ' .. diagnostic)
    nmap('<leader>fl', picker.diagnostics_document, 'list document ' .. diagnostics)
    nmap('<leader>fL', picker.diagnostics_workspace, 'list workspace ' .. diagnostics)
    nmap('<leader>ft', function()
      vim.diagnostic.enable(not vim.diagnostic.is_enabled())
    end, 'toggle visibility of ' .. diagnostics)

    if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_inlayHint, attachEvent.buf) then
        nmap('<leader>th', function()
            vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = attachEvent.buf })
        end, 'Toggle inlay hints')
    end
end

-- adapted from kickstart
-- highlights references of the word under your cursor when your cursor rests there for a bit.
local function highlight_references(attachEvent)
    local client = vim.lsp.get_client_by_id(attachEvent.data.client_id)
    if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_documentHighlight, attachEvent.buf) then
        local highlight_augroup = vim.api.nvim_create_augroup('config-lsp-highlight', { clear = false })
        vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
            buffer = attachEvent.buf,
            group = highlight_augroup,
            callback = vim.lsp.buf.document_highlight,
        })

        vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
            buffer = attachEvent.buf,
            group = highlight_augroup,
            callback = vim.lsp.buf.clear_references,
        })

        vim.api.nvim_create_autocmd('LspDetach', {
            group = vim.api.nvim_create_augroup('config-lsp-detach', { clear = true }),
            callback = function(detachEvent)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds { group = 'config-lsp-highlight', buffer = detachEvent.buf }
            end,
        })
    end
end

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('config-lsp-attach', { clear = true }),
    callback = function(event)
        set_keymaps(event)
        highlight_references(event)
    end,
})

