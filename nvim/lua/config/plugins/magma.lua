vim.cmd [[
    nnoremap <silent><expr> <leader>r  :MagmaEvaluateOperator<CR>
    nnoremap <silent>       <leader>rr :MagmaEvaluateLine<CR>
    xnoremap <silent>       <leader>r  :<C-u>MagmaEvaluateVisual<CR>
    nnoremap <silent>       <leader>rc :MagmaReevaluateCell<CR>
    nnoremap <silent>       <leader>rd :MagmaDelete<CR>
    nnoremap <silent>       <leader>ro :MagmaShowOutput<CR>

    let g:magma_automatically_open_output = v:false
    let g:magma_image_provider = "ueberzug"
]]

-- vim.cmd("MagmaInit sagemath")
