return {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    keys = function()
        return require('utils').get_lazy_keys_for('no-neck-pain', {
            { '<leader>c', ':NoNeckPain<CR>' },
        })
    end,
    lazy = false,
    opts = {
        width = 130,
        autocmds = {
            -- When `true`, enables the plugin when you start Neovim.
            -- If the main window is  a side tree (e.g. NvimTree) or a dashboard, the command is delayed until it finds a valid window.
            -- The command is cleaned once it has successfuly ran once.
            -- enableOnVimEnter = true,
        },
        mappings = {
          enabled = true,
          widthUp = "<M-=>",
          widthDown = "<M-->",
        },
        -- buffers = {
        --     colors = {
        --         -- blend = 1,
        --         background = '#191919',
        --         text = '#ffffff',
        --     }
        -- }
    }
}
