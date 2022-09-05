-- vim.cmd [[
-- let g:indent_blankline_char = '│'
-- let g:indent_blankline_use_treesitter = "true"
-- let g:indent_blankline_show_current_context = "true"
-- ]]

require("indent_blankline").setup {
    char = "│",
    use_treesitter = true,
    show_current_context = true,
    buftype_exclude = {"terminal"},
    filetype_exclude = {"norg"},
    max_indent_increase = 1,
    show_trailing_blankline_indent = false,
    -- show_current_context_start = true,
}


