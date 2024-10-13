return {
    -- 'ramojus/mellifluous.nvim',
    dir = '~/dev/mellifluous.nvim',
    -- dir = '~/dev/mell-clones/windowsrefund-mellifluous',
    -- dir = '~/dev/mell-clones/antoineco-mellifluous',
    lazy = false,
    -- version = "v0.*", -- uncomment for stable config (some features might be missed if/when v2 comes out)
    priority = 1000,
    config = function()
        -- require('mellifluous').setup({
        --     transparent_background = { enabled = false },
        --     -- color_overrides = {
        --     --     dark = {
        --     --         bg = '#902342',
        --     --         -- colors = function(colors)
        --     --         --     return {
        --     --         --         -- fg = colors.bg:lightened(50),
        --     --         --         bg2 = colors.bg:lightened(-3),
        --     --         --         bg3 = colors.bg:lightened(-6),
        --     --         --         bg4 = colors.bg:lightened(-9),
        --     --         --         bg5 = colors.bg:lightened(-12),
        --     --         --         fg = nil,
        --     --         --     }
        --     --         -- end,
        --     --     }
        --     -- },
        --     colorset = 'mellifluous',
        --     -- flat_background = {
        --     --     line_numbers = true,
        --     --     file_tree = false,
        --     -- },
        --     mellifluous = {
        --         color_overrides = {
        --             dark = {
        --                 bg = function(bg)
        --                     -- return bg:darkened(2) -- hard contrast
        --                     -- return bg:lightened(2) -- soft contrast
        --                 end,
        --                 colors = function(colors)
        --                     return {
        --                         -- fg = "#f7c7c7",
        --                         -- shades_fg = "#dadada",
        --                         -- fg = colors.bg:lightened(50),
        --                         -- bg2 = colors.bg:lightened(2),
        --                         -- bg3 = colors.bg:lightened(5),
        --                     }
        --                 end,
        --             },
        --             light = {
        --                 bg = function(bg)
        --                     -- return bg:lightened(2) -- hard contrast
        --                     -- return bg:darkened(2) -- soft contrast
        --                 end,
        --             }
        --         },
        --         -- color_overrides = {
        --         --     dark = {
        --         --         fg = "#f7c7c7",           -- bg:with_lightness(87) -> bg:with_lightness(80)
        --         --         shades_fg = "#dadada"     -- original fg color
        --         --     },
        --         -- },
        --         highlight_overrides = {
        --         },
        --         -- neutral = false,
        --         -- color_overrides = {
        --         --     dark = {
        --         --         bg = "#2f1f1f",
        --         --         -- fg = nil,
        --         --         shades_fg = "#f0f0f0",
        --         --         functions = "#f5f555"
        --         --     },
        --         --     light = {
        --         --         bg = "#ffffff",
        --         --         -- fg = nil,
        --         --         -- shades_fg = "#f0f0f0",
        --         --         -- functions = "#f5f555"
        --         --     }
        --         -- }
        --     },
        --     mountain = {
        --         -- color_overrides = {
        --         --     dark = {
        --         --         bg = '#21212f',
        --         --         comments = '#654444'
        --         --     }
        --         -- }
        --     },
        --     tender = {},
        --     -- highlight_overrides = function(colors, hl)
        --     --     hl.set('Normal', {fg = colors.red, bg = '#666666'})
        --     --     hl.set('CursorLine', {fg = colors.red, bg = colors.green})
        --     -- end
        --     highlight_overrides = {
        --         -- dark = function(hl, colors)
        --         --     hl.set('IncSearch', { bg = colors.main_keywords, fg = colors.bg })
        --         --     hl.set('Search', { link = hl.get('IncSearch')})
        --         -- end,
        --     }
        -- })

        require('mellifluous').setup({
            transparent_background = { enabled = false }
        })
        vim.cmd('colorscheme mellifluous')
    end,
    }
