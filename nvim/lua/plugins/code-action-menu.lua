return {
    'weilbith/nvim-code-action-menu',
    keys = function()
        return require('utils').get_lazy_keys_for('code-action-menu', {
            {'<leader>la', ':CodeActionMenu<CR>'},
        })
    end,
    cmd = "CodeActionMenu"
}
