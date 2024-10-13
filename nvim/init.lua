vim.api.nvim_set_keymap("", "<space>", "<Nop>", {})
vim.g.mapleader = ' '

-- require("impatient")

require('config.settings')
require('config.keys')
require('config.auto')

require('utils')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
    change_detection = {
        -- automatically check for config file changes and reload the ui
        enabled = true,
        notify = false,
    },
    ui = {
        backdrop = 60
    }
})

-- vim.cmd.colorscheme('mellifluous')
