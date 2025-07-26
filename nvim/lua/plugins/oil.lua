return {
    'stevearc/oil.nvim',
    cmd = "Oil",
    lazy = false, -- to work when I open directory directly
    keys = function()
        return require('utils').get_lazy_keys_for('oil', {
            { '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' } },
        })
    end,

    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
        -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories
        default_file_explorer = true,
    },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
}
