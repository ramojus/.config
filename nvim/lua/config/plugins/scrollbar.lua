vim.cmd [[
augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre                * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained                          * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost       * silent! lua require('scrollbar').clear()
augroup end

let g:scrollbar_shape = {
            \ 'head': '▎',
            \ 'body': '▎',
            \ 'tail': '▎',
            \ }

let g:scrollbar_right_offset = 0
let g:scrollbar_max_size = 30
let g:scrollbar_excluded_filetypes = ['nerdtree']
]]
