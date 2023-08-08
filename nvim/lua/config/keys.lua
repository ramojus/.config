local map = require('config.utils').get_map_func_for()

local function bind_undo_breakpoints(breakpoints)
    for b in breakpoints:gmatch"." do
        map('i', b, b .. '<C-g>u')
    end
end


--                  Resizing windows
---------------------------------------------------------
map('n', '<M-=>',       ':vertical resize +5<CR>')
map('n', '<M-->',       ':vertical resize -5<CR>')
map('n', '<M-+>',       ':resize +2<CR>')
map('n', '<M-_>',       ':resize -2<CR>')


--                  Manipulating lines
---------------------------------------------------------
map('n', '<M-j>',       'o<Esc>k', 'add empty line below the current one')
map('n', '<M-k>',       'O<Esc>j', 'add empty line above the current one')
-- Moving lines
map('v', 'J',           [[:m '>+1<CR>gv=gv]])
map('v', 'K',           [[:m '<-2<CR>gv=gv]])
map('n', '<M-J>',       [[:m .+1<CR>]])
map('n', '<M-K>',       [[:m .-2<CR>]])
map('n', 'tt',          [[:setlocal shiftwidth=2 tabstop=2<CR>]])

--                  Centered search
---------------------------------------------------------
map('n', 'n',           'nzzzv')
map('n', 'N',           'Nzzzv')


--                  Undo breakpoints
---------------------------------------------------------
bind_undo_breakpoints([[,.!?;:]])


--                  Navigating
---------------------------------------------------------
map('n', '<leader>b',   '<C-^>')
map('n', '<leader>x',   ':bp <CR> :bd #<CR>') -- kill buffer.

map('n', '<leader>w',   '<C-w>')

map('n', '<C-l>',       '<C-w><C-l>')
map('n', '<C-h>',       '<C-w><C-h>')
map('n', '<C-j>',       '<C-w><C-j>')
map('n', '<C-k>',       '<C-w><C-k>')
map('i', '<C-l>',       '<C-w><C-l>')
map('i', '<C-h>',       '<C-w><C-h>')
map('i', '<C-j>',       '<C-w><C-j>')
map('i', '<C-k>',       '<C-w><C-k>')
map('t', '<C-h>',       [[<C-\><C-n><C-W>h]])
map('t', '<C-j>',       [[<C-\><C-n><C-W>j]])
map('t', '<C-k>',       [[<C-\><C-n><C-W>k]])
map('t', '<C-l>',       [[<C-\><C-n><C-W>l]])

map('n', '<leader>u',   ':UndotreeShow<CR>')

-- Register big relative jumps as navigatable with <C-o> and <C-i>.
map('n', "k",     [[(v:count > 5 ? "m'" . v:count : "") . 'k']], 'if the count is big enough, register to jump list', { expr = true })
map('n', "j",     [[(v:count > 5 ? "m'" . v:count : "") . 'j']], 'if the count is big enough, register to jump list', { expr = true })


--                  Telescope
---------------------------------------------------------
map('n', '<leader>ff',  require('telescope.builtin').find_files)
map('n', '<leader>fF',  ':Telescope find_files cwd=~ hidden=1<cr>')
map('n', '<leader>fc',  ':Telescope find_files cwd=~/.config<cr>')
map('n', '<leader>fg',  require('telescope.builtin').live_grep)
map('n', '<leader>fb',  require('telescope.builtin').buffers)
map('n', '<leader>fh',  require('telescope.builtin').help_tags)
map('n', '<leader>fH',  require('telescope.builtin').highlights)
map('n', '<leader>fp',  require('telescope.builtin').planets)
map('n', '<leader>fm',  require('telescope.builtin').man_pages)
map('n', '<leader>fr',  require('telescope.builtin').reloader)


--                  Harpoon
---------------------------------------------------------

--                  Yanking
---------------------------------------------------------
map('n', '<leader>d',   '"+d')
map('n', '<leader>p',   '"+p')
map('n', '<leader>P',   '"+P')
map('n', '<leader>y',   '"+y')
map('v', '<leader>y',   '"+y')
map('n', 'yaa',         'mZggyG`Zzz') -- yank all buffer
map('n', '<leader>yaa', 'mZgg"+yG`Zzz') -- yank all buffer
map('n', '<leader>Y',   '"+y$')

--                  Reloading
---------------------------------------------------------
map('n', '<leader>so',  ':luafile %<CR>:lua vim.notify("file sourced")<CR>')
map('n', '<leader>sv',  [[:lua require('config.utils').reload_config()<CR>]])


--                  Terminal
---------------------------------------------------------
map('t', '<C-n>',       [[<C-\><C-n>]])

--                  Plugins
---------------------------------------------------------
map('n', '<leader>sp', ':PackerSync<CR>')
map('n', '<leader>m', ':MarkdownPreview<CR>')

--                  Other good stuff
---------------------------------------------------------
map('n', 'Y',           'y$')
map('n', '<leader> ',   ":echon ''<CR>") -- clear command line
map('n', '<leader>cp',  [[:let @+=expand('%:p:h')<CR>]]) -- copy current file path to general register.
map('n', '<leader>md',  [[:!mkdir -p "%:p:h"<CR>]]) -- create non-existant file directory.
map('n', '<C-s>',       [[:%s/<C-r>0//g<left><left>]])
map('v', '<C-s>',       [[:s/<C-r>0//g<left><left>]])
-- mouse scrolling (with opt.mouse = "")
map('n', '<Up>', '<C-y>')
map('n', '<Down>', '<C-e>')

--                  Snippets
---------------------------------------------------------
-- C++
-- include guards
map('n', '<Leader>ig',  [[ggO<Esc>"%p:silent! s/\([A-Z]\)/_\1/ge<CR>0f.r_0gUwI#ifndef <Esc>yyplcwdefine<Esc>yy<Esc>Go<Esc>plcwendif //<Esc>ggjj]])
-- main.cpp start
map('n', '<Leader>is',  [[<Leader>is i#include <iostream><CR><CR>using namespace std;<CR><CR>int main() {}<left><CR>]])

