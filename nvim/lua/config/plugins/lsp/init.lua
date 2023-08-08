return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/cmp-nvim-lsp',
    },
    init = function()
        require('config.plugins.lsp.mason')
        require('config.plugins.lsp.config')
    end,
}
