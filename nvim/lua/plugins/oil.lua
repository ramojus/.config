return {
    'stevearc/oil.nvim',
    keys = function()
        return require('utils').get_lazy_keys_for('oil.nvim (edit/navigate file list in buffer)', {
            { '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' } },
        })
    end,
    opts = {
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
