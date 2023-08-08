return {
    'lewis6991/gitsigns.nvim',
    opts = {
        on_attach = function(bufnr)
            if vim.api.nvim_buf_get_name(bufnr):match("cpp") or vim.opt.filetype == nil then
                -- Don't attach to specific buffers whose name matches a pattern
                return false
            end
            vim.keymap.set('n', '<leader>gs', require('gitsigns').stage_hunk, {})
            vim.keymap.set('n', '<leader>gp', require('gitsigns').preview_hunk, {})
            vim.keymap.set('n', '<leader>gn', require('gitsigns').next_hunk, {})
            vim.keymap.set('n', '<leader>gp', require('gitsigns').prev_hunk, {})
        end
    }
}
