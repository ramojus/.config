return {
    'nvim-tree/nvim-tree.lua',
    -- keys = function()
    --     return require('utils').get_lazy_keys_for('nvim-tree', {
    --         { '<leader>e', '<CMD>NvimTreeToggle<CR>' },
    --     })
    -- end,
    cmd = "NvimTreeToggle",
    opts = {
        renderer = {
            indent_markers = { enable = true },
        },

        view = {
            width = 36,
        },
        disable_netrw = false,
        diagnostics = {
            enable = true,
            show_on_dirs = true,
            icons = {
                -- error = '',
                -- warning = '',
                -- info = '',
                -- hint = ''
                error = '●',
                warning = '●',
                info = '●',
                hint = '●',
            }
        },
        update_focused_file = {
            -- enables the feature
            enable      = true,
            -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
            -- only relevant when `update_focused_file.enable` is true
            update_cwd  = false,
            -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
            -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
            ignore_list = {}
        },
    }
}
