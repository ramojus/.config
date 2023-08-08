return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    -- event = { "BufReadPost", "BufNewFile" },
    -- launch = ':TSEnable highlight',
    version = false,
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = "all",
            highlight = {
                enable = true,
                disable = {},
            },
            indent = { enable = true },
        })
    end
}
