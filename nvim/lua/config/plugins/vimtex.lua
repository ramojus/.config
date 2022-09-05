vim.g.vimtex_view_method = 'zathura'

-- Or with a generic interface:
vim.g.vimtex_view_general_viewer = 'evince'
vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,
-- see ":help vimtex-compiler".
-- vim.g.vimtex_compiler_method = 'latexrun'
vim.cmd[[
let g:vimtex_compiler_latexmk_engines = {
		\ '_'	:	'-xelatex',
		\}
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \    '-shell-escape',
    \ ],
    \}
]]

vim.g.maplocalleader = ' '
vim.g.vimtex_quickfix_mode = 0
-- vim.g.vimtex_quickfix_autoclose_after_keystrokes = 1
