vim.api.nvim_set_keymap("", "<space>", "<Nop>", {})
vim.g.mapleader = ' '

require("impatient")

require('config.plug-def')
require('config.settings')
require('config.keys')
require('config.lsp')
require('config.auto')
require('config.utils')

vim.cmd('colorscheme mellifluous')

