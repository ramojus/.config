return {
    -- 'ramojus/mellifluous.nvim',
    dir = '~/dev/mellifluous.nvim',
    lazy = true,
    version = "v0.*", -- uncomment for stable config (some features might be missed if/when v2 comes out)
    opts = {
        color_set = 'mellifluous',
        mellifluous = {
            highlight_overrides = {
                -- dark = function(hl, colors)
                --     hl.set('LineNr', {fg = colors.green:desaturated(10), bg = '#000000'})
                -- end,
            },
            neutral = true,
            -- color_overrides = {
            --     dark = {
            --         bg = "#2f1f1f",
            --         -- fg = nil,
            --         shades_fg = "#f0f0f0",
            --         functions = "#f5f555"
            --     },
            --     light = {
            --         bg = "#ffffff",
            --         -- fg = nil,
            --         -- shades_fg = "#f0f0f0",
            --         -- functions = "#f5f555"
            --     }
            -- }
        },
        mountain = {
            -- color_overrides = {
            --     dark = {
            --         bg = '#21212f',
            --         comments = '#654444'
            --     }
            -- }
        },
        tender = {},
        -- highlight_overrides = function(colors, hl)
        --     hl.set('Normal', {fg = colors.red, bg = '#666666'})
        --     hl.set('CursorLine', {fg = colors.red, bg = colors.green})
        -- end
        highlight_overrides = {
            -- dark = function(hl, colors)
            --     hl.set('IncSearch', { bg = colors.main_keywords, fg = colors.bg })
            --     hl.set('Search', { link = hl.get('IncSearch')})
            -- end,
        }
    },
}
