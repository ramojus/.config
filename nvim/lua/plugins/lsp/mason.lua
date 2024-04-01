local ensure_installed = {
    "clangd",
    "cmake",
    "html",
    -- "lua_ls",
    "pyright",
    "rust_analyzer",
    "texlab",
    "eslint",
    "julials",
    "gopls",
}

local installed_by_nix = {
    'hls',
    'ocamllsp',
    'lua_ls',
    'typst_lsp'
}

if not os.getenv('NIX_PATH') then
    ensure_installed = vim.tbl_extend('force', ensure_installed, installed_by_nix)
end

require 'mason'.setup {
    PATH = "append"
}

require 'mason-lspconfig'.setup {
    ensure_installed = ensure_installed,
    automatic_installation = false, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    return
end

for _, server in pairs(vim.tbl_extend('force', ensure_installed, installed_by_nix)) do
    local opts = {
        on_attach = require'plugins.lsp.on_attach',
        capabilities = vim.lsp.protocol.make_client_capabilities(),
    }
    opts.capabilities = require('cmp_nvim_lsp').default_capabilities(opts.capabilities)

    if server == "lua_ls" then
        opts = vim.tbl_deep_extend("force", require'plugins.lsp.settings.lua', opts)
    end

    if server == "hls" then
        opts = vim.tbl_deep_extend("force", require'plugins.lsp.settings.haskell', opts)
    end

    if server == "clangd" then
        opts = vim.tbl_deep_extend("force", require'plugins.lsp.settings.cpp', opts)
    end

    if server == "rust_analyzer" then
        opts = vim.tbl_deep_extend("force", require'plugins.lsp.settings.rust', opts)
    end

    if server == "typst_lsp" then
        opts = vim.tbl_deep_extend("force", require'plugins.lsp.settings.typst', opts)
    end

    lspconfig[server].setup(opts)
end
