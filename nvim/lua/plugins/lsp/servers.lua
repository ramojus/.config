local servers_to_try_setup = {
    -- "cmake",
    -- { server = "html", ft = "html" },
    "html",
    "pyright", -- python static type checker
    "texlab", -- latex
    "eslint", -- stylistic errors in ecmascript
    "julials",
    "gopls",
    'hls',
    'ocamllsp',
    'lua_ls',
    'ts_ls',
    "pylsp",
    "rust_analyzer",
    "tinymist",
    "clangd",
}

local is_nvim_0_11 = vim.fn.has('nvim-0.11') == 1

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    return
end

for _, server in ipairs(servers_to_try_setup) do
    local opts = {
        capabilities = vim.lsp.protocol.make_client_capabilities(),
    }
    opts.capabilities = require('blink.cmp').get_lsp_capabilities(opts.capabilities)

    if server == "lua_ls" then
        opts = vim.tbl_deep_extend("force", require'plugins.lsp.settings.lua', opts)
    elseif server == "hls" then
        opts = vim.tbl_deep_extend("force", require'plugins.lsp.settings.haskell', opts)
    elseif server == "clangd" then
        opts = vim.tbl_deep_extend("force", require'plugins.lsp.settings.cpp', opts)
    elseif server == "rust_analyzer" then
        opts = vim.tbl_deep_extend("force", require'plugins.lsp.settings.rust', opts)
    elseif server == "tinymist" then
        opts = vim.tbl_deep_extend("force", require'plugins.lsp.settings.typst', opts)
    end

    -- if is_nvim_0_11 then
    --     vim.lsp.config[server] = opts
    -- else
        lspconfig[server].setup(opts)
    -- end
end

-- vim.lsp.enable(servers_to_try_setup)
