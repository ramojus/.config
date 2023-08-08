Bind_custom = vim.api.nvim_set_keymap

function Reload_config()
    local hls_status = vim.v.hlsearch
    for name,_ in pairs(package.loaded) do
        if name:match('^config') and not (name:find('lsp') or name:find('plugins.cmp')) then
            package.loaded[name] = nil
        end
    end

    dofile(vim.env.MYVIMRC)
    if hls_status == 0 then
        vim.opt.hlsearch = false
    end
end

function Add_highlight(highlight)
    -- Highlights are only working when executed after VimEnter for some reason
    vim.cmd ([[au VimEnter * ]] .. highlight)
    -- to make them work after reloading
    vim.cmd (highlight)
end

-- Merges recursively two or more map-like tables.
-- If the same key is found, uses value from the rightmost map
function Merge(...)
    return vim.tbl_deep_extend('force', ...)
end

function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = Merge(options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function Buf_map(bufnr, mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = Merge(options, opts)
    end
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, options)
end


