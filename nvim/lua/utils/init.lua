require('utils.disable_builtin')
local utils = {}

function utils.reload_config()
    for name, _ in pairs(package.loaded) do
        if name:match('^config') and not (name:find('lsp') or name:find('plugins.cmp')) then
            package.loaded[name] = nil
        end
    end

    dofile(vim.env.MYVIMRC)
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

function utils.get_map_func_for(plug_name, buffer)
    return function(modes_str, keys, func, desc, extra_opts)
        local modes = {}
        for mode in modes_str:gmatch"." do
            table.insert(modes, mode)
        end

        local opts = extra_opts or {}
        if plug_name then
            opts.desc = plug_name
            if desc then
                opts.desc = opts.desc .. ': ' .. desc
            end
        elseif desc then
            opts.desc = desc
        end
        if buffer then
            opts.buffer = buffer
        end

        vim.keymap.set(modes, keys, func, opts)
    end
end

function utils.get_lazy_keys_for(plug_name, lazy_keys)
    for _, lazy_key in pairs(lazy_keys) do
        if lazy_key.desc then
            lazy_key.desc = plug_name .. ': ' .. lazy_key.desc
        else
            lazy_key.desc = plug_name
        end
    end
    return lazy_keys
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
