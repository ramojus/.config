return {
    'lukas-reineke/indent-blankline.nvim',
    opts = {
        -- char = "▏",
        use_treesitter = true,
        show_current_context = true,
        buftype_exclude = { "terminal" },
        filetype_exclude = { "norg" },
        max_indent_increase = 1,
        show_trailing_blankline_indent = false,
        -- show_current_context_start = true,
    }
}
