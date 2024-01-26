return {
    'lervag/vimtex',
    config = function()
        vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_quickfix_mode = 0
        vim.g.vimtex_compiler_latexmk_engines = {
            _ = "-lualatex",
        }
        vim.g.vimtex_compiler_latexmk = {
            options = {
                '-shell-escape',
            },
        }
    end
}
