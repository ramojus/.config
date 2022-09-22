vim.cmd[[
if exists('g:started_by_firenvim')
  set laststatus=0
endif

let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'takeover': 'never',
        \ },
        \ '.*localhost.*notebooks.*ipynb.*': {
            \ 'takeover': 'always'
        \ }
    \ }
\ }
]]
