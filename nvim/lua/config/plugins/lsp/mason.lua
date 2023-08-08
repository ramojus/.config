local installed_servers = {
    "clangd",
    "cmake",
    "html",
    "lua_ls",
    "pyright",
    "rust_analyzer",
    "texlab",
    "eslint",
    "julials",
    "gopls",
}

local managed_servers = {
    'hls',
}

require 'mason'.setup({
    PATH = 'append', -- do not install a package if it can be found on the system
});

require 'mason-lspconfig'.setup {
    ensure_installed = installed_servers,
    automatic_installation = false, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    return
end

for _, server in pairs(vim.tbl_extend('force', installed_servers, managed_servers)) do
    local opts = {
        on_attach = require'config.plugins.lsp.on_attach',
        capabilities = vim.lsp.protocol.make_client_capabilities(),
    }
    opts.capabilities = require('cmp_nvim_lsp').default_capabilities(opts.capabilities)

    if server == "lua_ls" then
        opts = vim.tbl_deep_extend("force", require'config.plugins.lsp.settings.lua', opts)
    end

    if server == "hls" then
        opts = vim.tbl_deep_extend("force", require'config.plugins.lsp.settings.haskell', opts)
    end

    if server == "clangd" then
        opts = vim.tbl_deep_extend("force", require'config.plugins.lsp.settings.cpp', opts)
    end

    if server == "rust_analyzer" then
        opts = vim.tbl_deep_extend("force", require'config.plugins.lsp.settings.rust', opts)
    end
    lspconfig[server].setup(opts)
end
