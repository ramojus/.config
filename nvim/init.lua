vim.api.nvim_set_keymap("", "<space>", "<Nop>", {})
vim.g.mapleader = ' '

-- require("impatient")

require('config.lazy')
require('config.settings')
require('config.keys')
-- require('config.lsp')
require('config.auto')

vim.cmd.colorscheme('term-colors')
-- vim.api.nvim_set_hl(0, 'IndentBlanklineContextChar', { ctermfg = 8 })
-- vim.cmd('hi! IndentBlanklineContextChar ctermfg=8')

