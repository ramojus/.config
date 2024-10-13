return {
    'stevearc/oil.nvim',
    cmd = "Oil",
    keys = function()
        return require('utils').get_lazy_keys_for('oil', {
            { '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' } },
        })
    end,
    opts = {
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
