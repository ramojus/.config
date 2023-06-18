require 'mellifluous'.setup {
    color_set = 'mellifluous',
    mellifluous = {
        neutral = true,
        -- color_overrides = {
        --     dark = {
        --         bg = "#2f1f1f",
        --         fg = nil,
        --         shades_fg = "#f0f0f0",
        --         functions = "#f5f555"
        --     },
        --     light = {
        --         bg = "#aeefef",
        --         fg = nil,
        --         -- shades_fg = "#f0f0f0",
        --         -- functions = "#f5f555"
        --     }
        -- }
    },
    mountain = {
        color_overrides = {
            dark = {
                bg = '#21212f',
                comments = '#654444'
            }
        }
    },
    tender = { },
}

-- local lush = require('lush')
-- local mellifluous_spec = require('mellifluous').load()
--
-- local new_spec = lush.extends({ mellifluous_spec }).with(function()
--     ---@diagnostic disable: undefined-global
--     return {
--         Exception { fg = '#FD1C35', },
--         LineNr { fg = '#FD1C35', },
--     }
-- end)
--
-- lush(new_spec)

vim.cmd('colorscheme mellifluous')

-- vim.api.nvim_set_hl(0, "Exception", { fg = '#FD1C35' })

-- vim.opt.background = 'dark'
-- vim.cmd('colorscheme mellifluous')
-- vim.cmd('colorscheme mellifluous_fast')

-- vim.cmd('colorscheme mellifluous_built')
-- vim.cmd('colorscheme mellifluous_vim')

-- vim.cmd('colorscheme catppuccin')
