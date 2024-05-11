return {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    -- build = ':Neorg sync-parsers',
    ft = 'norg',
    keys = require('utils').get_lazy_keys_for('neorg', {
        { '<leader>n', ':Neorg wor' }
    }),
    cmd = 'Neorg',
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.dirman"] = {
                config = {
                    workspaces = {
                        diary = "~/notes/diary",
                        home = "~/notes/",
                        work = "~/notes/work",
                        studies = "~/notes/studies"
                    },
                    default_workspace = "home"
                }
            },
            ["core.concealer"] = {
                config = {
                    icons = {
                        -- heading = {
                        --     -- icons = { ' ' }
                        -- },
                        todo = false,
                    },
                    icon_preset = 'diamond'
                }
            },
            ["core.journal"] = {
                config = {
                    journal_folder = "journal",
                    strategy = "flat",
                }
            },
            ["core.keybinds"] = {},
            ["core.itero"] = {}, -- alt-enter for continuing
            ["core.promo"] = {}, -- indenting
            ["core.qol.toc"] = {
                -- close_after_use = true,
            },
        },
    }
}
