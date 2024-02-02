return {
    "nvim-neorg/neorg",
    build = ':Neorg sync-parsers',
    ft = 'norg',
    keys = require('utils').get_lazy_keys_for('neorg', {
        { '<leader>n', ':Neorg wor' }
    }),
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.dirman"] = {
                config = {
                    workspaces = {
                        diary = "~/notes/diary",
                        home = "~/notes/",
                        work = "~/notes/work",
                    },
                    default_workspace = "home"
                }
            },
            ["core.concealer"] = {
                config = {
                    icons = {
                        heading = {
                            -- icons = { '⹃' }
                            icons = { ' ' }
                        },
                        todo = false,
                    }
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
