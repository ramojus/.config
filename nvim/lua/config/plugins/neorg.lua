require("neorg").setup {
    load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    diary = "~/notes/diary",
                    home = "~/notes/home",
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
        ["core.itero"] = {},
        ["core.journal"] = {},
    },
}
