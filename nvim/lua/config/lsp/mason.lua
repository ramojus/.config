local servers = {
    "clangd",
    "cmake",
    "html",
    "lua_ls",
    -- "pyright",
    "rust_analyzer",
    "texlab",
    "eslint",
    "julials",
    "gopls",
    "hls",
}

require 'mason'.setup();

require 'mason-lspconfig'.setup {
    ensure_installed = servers,
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    return
end

for _, server in pairs(servers) do
    local opts = {
        on_attach = require'config.lsp.on_attach',
        capabilities = vim.lsp.protocol.make_client_capabilities(),
    }
    opts.capabilities = require('cmp_nvim_lsp').default_capabilities(opts.capabilities)

    if server == "lua_ls" then
        opts = vim.tbl_deep_extend("force", require'config.lsp.settings.lua', opts)
    end

    if server == "hls" then
        opts = vim.tbl_deep_extend("force", require'config.lsp.settings.haskell', opts)
    end

    if server == "clangd" then
        -- until this is fixed: https://github.com/jose-elias-alvarez/null-ls.nvim/issues/428
        -- opts.capabilities.offsetEncoding = { "utf-16" }
        opts = vim.tbl_deep_extend("force", require'config.lsp.settings.cpp', opts)
    end

    if server == "rust_analyzer" then
        opts = vim.tbl_deep_extend("force", require'config.lsp.settings.rust', opts)
    end
    lspconfig[server].setup(opts)
end
