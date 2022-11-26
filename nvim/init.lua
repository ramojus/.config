vim.api.nvim_set_keymap("", "<space>", "<Nop>", {})
vim.g.mapleader = ' '

pcall(require, "impatient")

-- require('config.functions')
 require('config.plug-def')
require('config.settings')
require('config.keys')
require('config.lsp')
require('config.auto')
-- require('config.theme')
require('config.plugins')
-- require('config.reload')
require('config.utils')
-- require('config.colors').init("meliora")
-- require('config.statusline')
-- error(vim.g.colors_name)

