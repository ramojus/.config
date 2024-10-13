return {
    'lukas-reineke/indent-blankline.nvim',
    -- dir = '~/dev/indent-blankline.nvim',
    main = "ibl",
    version = "v3.*",
    opts = {
        indent = {
            char = '┆',
            -- char = '│',
        },
        scope = {
            enabled = true,
            show_start = false,
            show_end = false,
        },
        exclude = {
            filetypes = { "norg" },
            buftypes = { "terminal" },
        },
        viewport_buffer = {
            max = 1,
        },
    }
}
