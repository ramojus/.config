local is_no_neck_pain_enabled = false

return {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    keys = function()
        return require('utils').get_lazy_keys_for('no-neck-pain', {
            { '<leader>c', function()
                is_no_neck_pain_enabled = not is_no_neck_pain_enabled
                vim.g.is_no_neck_pain_enabled = is_no_neck_pain_enabled
                vim.cmd('NoNeckPain')
            end},
        })
    end,
    lazy = not is_no_neck_pain_enabled,
    opts = {
        width = 130,
        autocmds = {
            -- When `true`, enables the plugin when you start Neovim.
            -- If the main window is  a side tree (e.g. NvimTree) or a dashboard, the command is delayed until it finds a valid window.
            -- The command is cleaned once it has successfuly ran once.
            enableOnVimEnter = is_no_neck_pain_enabled,
        },
        mappings = {
          enabled = true,
          -- widthUp = "<M-=>", -- defined in general keymaps instead (to reuse the same general keys)
          -- widthDown = "<M-->",
        },
        -- buffers = {
        --     colors = {
        --         -- blend = 1,
        --         background = '#191919',
        --         text = '#ffffff',
        --     }
        -- }
    },
}
