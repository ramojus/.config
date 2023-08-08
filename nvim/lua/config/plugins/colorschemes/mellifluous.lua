return {
    -- 'ramojus/mellifluous.nvim'
    dir = '~/dev/mellifluous.nvim',
    lazy = true,
    opts = {
        color_set = 'mellifluous',
        mellifluous = {
            neutral = true,
            color_overrides = {
                --     dark = {
                --         bg = "#2f1f1f",
                --         fg = nil,
                --         shades_fg = "#f0f0f0",
                --         functions = "#f5f555"
                --     },
                -- light = {
                --     bg = "#ffffff",
                --     fg = nil,
                --     -- shades_fg = "#f0f0f0",
                --     -- functions = "#f5f555"
                -- }
            }
        },
        mountain = {
            color_overrides = {
                dark = {
                    bg = '#21212f',
                    comments = '#654444'
                }
            }
        },
        tender = {},
    }
}
