vim.cmd [[
let g:signify_disable_by_default     = 1
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" hi SignifySignAdd guibg=NONE ctermbg=NONE
" hi SignifySignChange guibg=NONE ctermbg=NONE
" hi SignifySignDelete guibg=NONE ctermbg=NONE
]]

-- Jump though hunks
Map ('n', '<leader>gj', '<plug>(signify-next-hunk)')
Map ('n', '<leader>gk', '<plug>(signify-prev-hunk)')
Map ('n', '<leader>gJ', '9999<plug>(signify-next-hunk)')
Map ('n', '<leader>gK', '9999<plug>(signify-prev-hunk)')
