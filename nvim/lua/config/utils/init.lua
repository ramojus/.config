require('config.utils.disable_builtin')
local utils = {}


function utils.reload_config()
    local hls_status = vim.v.hlsearch
    for name, _ in pairs(package.loaded) do
        if name:match('^config') and not (name:find('lsp') or name:find('plugins.cmp')) then
            package.loaded[name] = nil
        end
    end

    dofile(vim.env.MYVIMRC)
    if hls_status == 0 then
        vim.opt.hlsearch = false
    end
    vim.notify("Config reloaded")
end

function utils.add_highlight(highlight)
    -- Highlights are only working when executed after VimEnter for some reason
    vim.cmd([[au VimEnter * ]] .. highlight)
    -- to make them work after reloading
    vim.cmd(highlight)
end

-- Merges recursively two or more map-like tables.
-- If the same key is found, uses value from the rightmost map
local function merge(...)
    return vim.tbl_deep_extend('force', ...)
end

function utils.map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = merge(options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function utils.create_autocmd(group_name, events, params)
    local group = vim.api.nvim_create_augroup(group_name, { clear = true })
    params = merge(params, { group = group })
    vim.api.nvim_create_autocmd(
        events,
        params
    )
end

function utils.buf_map(bufnr, mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = merge(options, opts)
    end
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, options)
end

return utils
