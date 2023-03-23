Map = require'config.utils'.map

local function bind_undo_breakpoints(breakpoints)
    for b in breakpoints:gmatch"." do
        Map ('i', b, b .. '<C-g>u')
    end
end


--                  Resizing windows
---------------------------------------------------------
Map ('n', '<M-=>',       ':vertical resize +5<CR>')
Map ('n', '<M-->',       ':vertical resize -5<CR>')
Map ('n', '<M-+>',       ':resize +2<CR>')
Map ('n', '<M-_>',       ':resize -2<CR>')


--                  Manipulating lines
---------------------------------------------------------
-- Adding empty lines.
Map ('n', '<M-j>',       'o<Esc>k')
Map ('n', '<M-k>',       'O<Esc>j')
-- Moving lines
Map ('v', 'J',           [[:m '>+1<CR>gv=gv]])
Map ('v', 'K',           [[:m '<-2<CR>gv=gv]])
Map ('n', '<M-J>',       [[:m .+1<CR>]])
Map ('n', '<M-K>',       [[:m .-2<CR>]])
Map ('n', 'tt',          [[:setlocal shiftwidth=2 tabstop=2<CR>]])

--                  Centered search
---------------------------------------------------------
Map ('n', 'n',           'nzzzv')
Map ('n', 'N',           'Nzzzv')


--                  Undo breakpoints
---------------------------------------------------------
bind_undo_breakpoints ([[,.!?;:]])


--                  Navigating
---------------------------------------------------------
Map ('n', '<leader>b',   '<C-^>')
Map ('n', '<leader>x',   ':bp <CR> :bd #<CR>') -- kill buffer.

Map ('n', '<leader>w',   '<C-w>')

Map ('n', '<C-l>',       '<C-w><C-l>')
Map ('n', '<C-h>',       '<C-w><C-h>')
Map ('n', '<C-j>',       '<C-w><C-j>')
Map ('n', '<C-k>',       '<C-w><C-k>')
Map ('i', '<C-l>',       '<C-w><C-l>')
Map ('i', '<C-h>',       '<C-w><C-h>')
Map ('i', '<C-j>',       '<C-w><C-j>')
Map ('i', '<C-k>',       '<C-w><C-k>')
Map ('t', '<C-h>',       [[<C-\><C-n><C-W>h]])
Map ('t', '<C-j>',       [[<C-\><C-n><C-W>j]])
Map ('t', '<C-k>',       [[<C-\><C-n><C-W>k]])
Map ('t', '<C-l>',       [[<C-\><C-n><C-W>l]])

Map ('n', '<leader>et',  ':NvimTreeToggle<CR>')
Map ('n', '<leader>er',  ':NvimTreeRefresh<CR>')
Map ('n', '<leader>es',  ':NvimTreeFindFile<CR>') -- [s]how current file
Map ('n', '<leader>u',   ':UndotreeShow<CR>')

-- Register big relative jumps as navigatable with <C-o> and <C-i>.
Map ('n', "k",     [[(v:count > 5 ? "m'" . v:count : "") . 'k']], { expr = true })
Map ('n', "j",     [[(v:count > 5 ? "m'" . v:count : "") . 'j']], { expr = true })


--                  Telescope
---------------------------------------------------------
-- Map ('n', '<leader>ff',  ':Telescope file_browser theme=get_dropdown<cr>')
Map ('n', '<leader>ff',  ':Telescope find_files<cr>')
Map ('n', '<leader>fF',  ':Telescope find_files cwd=~ hidden=1<cr>')
Map ('n', '<leader>fc',  ':Telescope find_files cwd=~/.config<cr>')
Map ('n', '<leader>fg',  ':Telescope live_grep<cr>')
Map ('n', '<leader>fb',  ':Telescope buffers<cr>')
Map ('n', '<leader>fh',  ':Telescope help_tags<cr>')
Map ('n', '<leader>fH',  ':Telescope highlights<cr>')
Map ('n', '<leader>fp',  ':Telescope planets<cr>')
Map ('n', '<leader>fm',  ':Telescope man_pages<cr>')
Map ('n', '<leader>fr',  ':Telescope reloader<cr>')


--                  Harpoon
---------------------------------------------------------
Map ('n', '<leader>hn',   ':lua require("harpoon.mark").add_file()<cr>:lua vim.notify("Harpoon file added")<cr>', {silent = false})
Map ('n', '<leader>hh',   ':lua require("harpoon.ui").toggle_quick_menu()<cr>')
Map ('n', '<leader>hf',   ':lua require("harpoon.ui").nav_file(1)<cr>')
Map ('n', '<leader>hd',   ':lua require("harpoon.ui").nav_file(2)<cr>')
Map ('n', '<leader>hs',   ':lua require("harpoon.ui").nav_file(3)<cr>')
Map ('n', '<leader>ha',   ':lua require("harpoon.ui").nav_file(4)<cr>')
Map ('n', '<leader>hc',   ':lua require("harpoon.cmd-ui").toggle_quick_menu()<cr>')
Map ('n', '<leader>hr',   ':lua require("harpoon.term").sendCommand(1, 1)<cr>')
Map ('n', '<leader>ht',   ':lua require("harpoon.term").gotoTerminal(1)<cr>')

--                  Yanking
---------------------------------------------------------
Map ('n', '<leader>d',   '"+d')
Map ('n', '<leader>p',   '"+p')
Map ('n', '<leader>P',   '"+P')
Map ('n', '<leader>y',   '"+y')
Map ('v', '<leader>y',   '"+y')
Map ('n', 'yaa',         'mZggyG`Zzz') -- yank all buffer
Map ('n', '<leader>yaa', 'mZgg"+yG`Zzz') -- yank all buffer
Map ('n', '<leader>Y',   '"+y$')

--                  Reloading
---------------------------------------------------------
Map ('n', '<leader>so',  ':luafile %<CR>:lua vim.notify("file sourced")<CR>', {silent = false})
Map ('n', '<leader>sv',  [[:lua require('config.utils').reload_config()<CR>]], {silent = false})


--                  Terminal
---------------------------------------------------------
Map ('t', '<C-n>',       [[<C-\><C-n>]])

--                  Lsp
---------------------------------------------------------
-- `code_action` is a superset of vim.lsp.buf.code_action and you'll be able to
-- use this mapping also with other language servers

Map ('n', '<leader>R',   [[:LspStop<CR>:LspStart<CR>]])

--                  Plugins
---------------------------------------------------------
Map ('n', '<leader>sp', ':PackerSync<CR>', {silent = false})
Map ('n', '<leader>m', ':MarkdownPreview<CR>', {silent = false})

--                  Other good stuff
---------------------------------------------------------
Map ('n', 'Y',           'y$')
Map ('n', '<leader> ',   ":echon ''<CR>") -- clear command line
Map ('n', '<leader>cp',  [[:let @+=expand('%:p:h')<CR>]]) -- copy current file path to general register.
Map ('n', '<leader>md',  [[:!mkdir -p "%:p:h"<CR>]], {silent = false}) -- create non-existant file directory.
Map ('n', '<C-s>',       [[:%s/<C-r>0//g<left><left>]], {silent = false})
Map ('v', '<C-s>',       [[:s/<C-r>0//g<left><left>]], {silent = false})
-- mouse scrolling (with opt.mouse = "")
Map ('n', '<Up>', '<C-y>')
Map ('n', '<Down>', '<C-e>')

--                  Snippets
---------------------------------------------------------
-- C++
-- include guards
Map ('n', '<Leader>ig',  [[ggO<Esc>"%p:silent! s/\([A-Z]\)/_\1/ge<CR>0f.r_0gUwI#ifndef <Esc>yyplcwdefine<Esc>yy<Esc>Go<Esc>plcwendif //<Esc>ggjj]])
-- main.cpp start
Map ('n', '<Leader>is',  [[<Leader>is i#include <iostream><CR><CR>using namespace std;<CR><CR>int main() {}<left><CR>]])

