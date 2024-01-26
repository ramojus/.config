local cmd = vim.cmd
local opt = vim.opt

-- cmd "filetype plugin indent on"

vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

opt.title = false
opt.number = true
opt.relativenumber = true
opt.hlsearch = false
opt.incsearch = true
opt.wildmode = "longest:full,full"
opt.errorbells = false
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4 -- tab press length
opt.expandtab = true -- tab to spaces
opt.smartindent = true -- smarter tabs
opt.wrap = false -- no line wrap
opt.termguicolors = true
opt.scrolloff = 2
opt.sidescrolloff = 4
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
-- opt.wildmenu = true -- better tab complete
opt.laststatus = 2
opt.showmode = false
opt.splitright = true
opt.splitbelow = true
opt.updatetime = 250
opt.signcolumn = "yes"
opt.cursorline = true
-- opt.lazyredraw = true
opt.ruler = true -- status in bottom line
opt.ignorecase = true
opt.smartcase = true
-- opt.autochdir = true -- automatically change directory to current file's directory
opt.autoread = true -- Automatically read in the file when changed externally
opt.autowrite = true
opt.mouse=""
-- opt.pumheight = 8 -- max number of items in autocomplete
vim.opt.guifont = "SauceCodePro NF:h10"

opt.list = true -- Show some invisible characters (tabs...
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  -- fold = "⸱",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
end

-- opt.pumblend = 5 -- opacity level for completion menu

opt.spelllang = "lt,en_us"
-- opt.spell = true
opt.encoding = "utf-8"
opt.keymap="lithuanian-baltic" -- C-6 to switch between language layouts (only in insert mode)
opt.iminsert=0
opt.imsearch=-1
-- additional keybindings for lithunian keymap
vim.api.nvim_set_keymap("l", "9", "„", {silent = true, noremap = true})
vim.api.nvim_set_keymap("l", "0", "“", {silent = true, noremap = true})
vim.api.nvim_set_keymap("l", "<M-->", "–", {silent = true, noremap = true})

opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
vim.cmd([[
  if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
  endif
  if !isdirectory($HOME."/.vim/undodir")
    call mkdir($HOME."/.vim/undodir", "", 0700)
  endif
  set undodir=~/.vim/undodir
]])

-- vim.cmd [[setlocal cinkeys-=0#]] -- don't shift preprocessor directives to the start of line in Clangs.
-- don't auto comment new lines
-- cmd [[au BufEnter * set fo-=cro]]

local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  command = [[silent! lua vim.highlight.on_yank{higroup = "Visual"}]],
  group = yankGrp,
})

-- Find makefile if it is in parrent directory
cmd "let &makeprg = 'if [ -f Makefile ]; then make; else make -C ..; fi'"


