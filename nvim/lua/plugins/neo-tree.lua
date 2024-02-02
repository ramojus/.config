return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    keys = function()
        return require('utils').get_lazy_keys_for('neo-tree', {
            { '<leader>e', '<CMD>Neotree toggle<CR>' },
        })
    end,
    opts = {
        source_selector = {
            winbar = false,
            statusline = false,
        },
        filesystem = {
            follow_current_file = {
                enabled = true, -- This will find and focus the file in the active buffer every time
                -- the current file is changed while the tree is open.
                leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
            },
        }

    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    }
}
