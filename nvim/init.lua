vim.api.nvim_set_keymap("", "<space>", "<Nop>", {})
vim.g.mapleader = ' '

-- require("impatient")

require('config.lazy')
require('config.settings')
require('config.keys')
-- require('config.lsp')
require('config.auto')

vim.cmd.colorscheme('mellifluous')

