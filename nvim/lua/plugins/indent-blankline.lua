return {
    'lukas-reineke/indent-blankline.nvim',
    -- dir = '~/dev/indent-blankline.nvim',
    main = "ibl",
    version = "3.*",
    opts = {
        scope = {
            enabled = true,
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
