if not pcall(require, "feline") then
  return
end

local colors = {
    bg = 'flow',
    fg = 'flow',
    yellow = '#e0af68',
    cyan = '#56b6c2',
    darkblue = '#081633',
    green = '#98c379',
    orange = '#d19a66',
    violet = '#a9a1e1',
    magenta = '#c678dd',
    blue = '#61afef',
    red = '#e86671'
}

local components = {
  active = {},
  inactive = {},
}

components.active[1] = {
    { provider = "", hl = "StatusLine"},
    {
        provider = 'file_encoding',
        left_sep = ' ',
    },
    {
        left_sep = ' ',
        provider = 'file_type'
    },
}

components.active[2] = {
    {
        provider = {
            name = 'file_info',
            opts = {
                type = 'unique',
                file_readonly_icon = '  ',
                file_modified_icon = '',
            }
        },
    },
}

components.active[3] = {
    {
        provider = 'position',
        left_sep = ' ',
    },
    {
        provider = 'git_branch',
        hl = {
            fg = 'white',
            bg = 'black',
            style = 'bold',
        },
        right_sep = {
            str = ' ',
            hl = {
                fg = 'NONE',
                bg = 'black',
            },
        },
    },
    {
        provider = 'git_diff_added',
        hl = {
            fg = 'green',
            bg = 'black',
        },
    },
    {
        provider = 'git_diff_changed',
        hl = {
            fg = 'orange',
            bg = 'black',
        },
    },
    {
        provider = 'git_diff_removed',
        hl = {
            fg = 'red',
            bg = 'black',
        },
        right_sep = {
            str = ' ',
            hl = {
                fg = 'NONE',
                bg = 'black',
            },
        },
    },
    {
        provider = 'line_percentage',
        hl = {
            style = 'bold',
        },
        left_sep = '  ',
        right_sep = ' ',
    },
    {
        provider = 'scroll_bar',
        hl = {
            fg = 'skyblue',
            style = 'bold',
        },
    },
}

local comps = {
    left_end = {
        provider = function() return '' end,
        hl = {
            fg = colors.bg,
            -- bg = colors.blue,
        }
    },
    line_percentage = {
        provider = 'line_percentage',
        left_sep = ' ',
        hl = {
            style = 'bold'
        }
    },
    scroll_bar = {
        provider = 'scroll_bar',
        left_sep = ' ',
        hl = {
            -- fg = colors.blue,
            style = 'bold'
        }
    },
    diagnostics = {
        {
            provider = 'diagnostic_errors',
            hl = { fg = 'red' },
        },
        {
            provider = 'diagnostic_warnings',
            hl = { fg = 'yellow' },
        },
        {
            provider = 'diagnostic_hints',
            hl = { fg = 'cyan' },
        },
        {
            provider = 'diagnostic_info',
            hl = { fg = 'skyblue' },
        },
    },
    lsp = {
        name = {
            provider = 'lsp_client_names',
            -- left_sep = ' ',
            right_sep = ' ',
            -- icon = '  ',
            icon = '慎',
            hl = {
                -- fg = colors.yellow
            }
        }
    },
    git = {
        branch = {
            provider = 'git_branch',
            icon = ' ',
            -- icon = ' ',
            left_sep = ' ',
            hl = {
                -- fg = colors.violet,
                style = 'bold'
            },
        },
        add = {
            provider = 'git_diff_added',
            hl = {
                -- fg = colors.green
            }
        },
        change = {
            provider = 'git_diff_changed',
            hl = {
                -- fg = colors.orange
            }
        },
        remove = {
            provider = 'git_diff_removed',
            hl = {
                -- fg = colors.red
            }
        }
    }
}

-- table.insert(components.active, {})
-- table.insert(components.active, {})
-- table.insert(components.active, {})
-- table.insert(components.inactive, {})
-- table.insert(components.inactive, {})
-- table.insert(components.inactive, {})
--
-- table.insert(components.active[1], comps.file.info)
-- table.insert(components.active[1], comps.git.branch)
-- table.insert(components.active[1], comps.git.add)
-- table.insert(components.active[1], comps.git.change)
-- table.insert(components.active[1], comps.git.remove)
-- table.insert(components.inactive[1], comps.file.info)
-- table.insert(components.active[3], comps.diagnostics)
-- table.insert(components.active[3], comps.lsp.name)
-- table.insert(components.active[3], comps.file.os)
-- table.insert(components.active[3], comps.file.position)
-- table.insert(components.active[3], comps.line_percentage)
-- table.insert(components.active[3], comps.scroll_bar)


-- require'feline'.setup {}
require'feline'.setup {
    -- colors = { bg = colors.bg, fg = colors.fg },
    components = components,
    -- vi_mode_colors = vi_mode_colors,
    force_inactive = {
        filetypes = {
            'packer',
            'NvimTree',
            'fugitive',
            'fugitiveblame'
        },
        buftypes = {'terminal'},
        bufnames = {}
    }
}
