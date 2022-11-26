local create_autocmd = require'config.utils'.create_autocmd

-- go to last loc when opening a buffer
create_autocmd(
    "ReturnToLastLocation",
    "BufReadPost",
    { command = [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]] }
)

create_autocmd(
    "AutosaveMarkdown",
    "CursorHold",
    { pattern = "*.md", command = "silent! wall" }
)
-- create_autocmd(
--     "AutosaveMarkdown",
--     "FileType",
--     { pattern = "markdown", command = "set awa" }
-- )

create_autocmd(
    "ShorterTabLength",
    "FileType",
    {
        pattern = "markdown,norg,xml,nix",
        command = "setlocal shiftwidth=2 tabstop=2"
    }
)

create_autocmd(
    "WrapText",
    "FileType",
    {
        pattern = "markdown,norg",
        command = "setlocal wrap linebreak"
    }
)

create_autocmd(
    "PrologHighlight",
    "BufEnter",
    {
        pattern = "*.pl",
        command = "setlocal filetype=prolog"
    }
)

create_autocmd(
    "PrologHighlight",
    "BufEnter",
    {
        pattern = "*.sage",
        command = "setlocal filetype=python"
    }
)

-- vim.cmd [[
--     " C-C++
--     au BufNewFile,BufRead *.h++ :set filetype=cpp
--     au FileType cpp nnoremap <leader>c :!g++ -o "%:r" "%" -lm<CR>
--     au FileType cpp nnoremap <leader>r :!g++ -o "%:r" "%" -lm && "./%:r"<CR>
--     au FileType cpp nnoremap <silent> <leader>H :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
--     au FileType c nnoremap <leader>c :!gcc -o "%:r" "%" -lm<CR>
--     au FileType c nnoremap <leader>r :!gcc -o "%:r" "%" -lm && "./%:r"<CR>
--     au FileType c nnoremap <silent> <leader>H :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
--
--     " C sharp
--     au FileType cs nnoremap <leader>r :!mcs % && mono %:r.exe<CR>
--
--     " Java
--     au FileType java nnoremap <leader>c :!javac "%"<CR>
--     au FileType java nnoremap <leader>r :!javac "%" && echo "%" \| awk -F. '{print $1}' \| xargs java<CR>
--
--     " Python
--     au FileType python nnoremap <leader>r <cmd>w<CR><cmd>TermExec cmd="python %"<CR>
--     " au FileType python nnoremap <leader>r <cmd>w<CR><cmd>TermExec cmd="python %"<CR>
--
--     " Rust
--     au FileType rust nnoremap <leader>r :w<CR>:TermExec cmd="cargo run"<CR>
--     au FileType rust nnoremap <leader>tr :w<CR>:TermExec cmd="cargo test"<CR>
--     " au FileType rust au InsertLeave <buffer> lua Buf_update_diagnostics()
--     " au FileType rust au TextChanged <buffer> lua Buf_update_diagnostics()
-- ]]
