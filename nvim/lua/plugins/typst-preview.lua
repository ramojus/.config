return {
    -- doesn't install the binaries for some reason... Meh, who cares
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    -- version = '0.3.*',
    build = function() require 'typst-preview'.update() end,
    keys = function()
        return require('utils').get_lazy_keys_for('typst-preview', {
            { 'zz', function()
                require('typst-preview').sync_with_cursor()
                vim.api.nvim_feedkeys('zz', 'n', false)
            end, desc = 'sync pdf with cursor' },
        })
    end,
    opts = {
        dependencies_bin = {
            ['typst-preview'] = "tinymist",
            ['websocat'] = "/home/ramojus/.nix-profile/bin/websocat",
        },

        follow_cursor = false,
    }
}
