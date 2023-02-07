require 'meliora'.setup {
    -- dim_inactive = true,
    -- neutral = true,
    color_set = 'mellifluous',
    transparent_background = {
        enabled = false,
    },
    mellifluous = {
        neutral = true,
        bg_contrast = 'medium'
    },

    -- After installation, add `vim.cmd('colorscheme mellifluous')` to your neovim config.

}
vim.opt.background = 'dark'
vim.cmd('colorscheme mellifluous')


