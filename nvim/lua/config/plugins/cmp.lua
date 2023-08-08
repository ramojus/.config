return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        "L3MON4D3/LuaSnip",
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lua',
        'f3fora/cmp-spell',
    },
    init = function()
        vim.opt.completeopt = "menuone,noselect"
    end,
    opts = function()
        local cmp = require 'cmp'
        local luasnip = require 'luasnip'
        return {
            preselect = cmp.PreselectMode.None,
            completion = {
                keyword_length = 1,
            },
            experimental = {
                ghost_text = false,
                native_menu = false,
            },
            formatting = {
                fields = { "abbr", "kind", "menu" },
                format = function(entry, item)
                    -- item.kind = lsp_symbols[item.kind]
                    -- item.kind = string.format("%s ", lsp_symbols[item.kind])
                    -- item.kind = item.kind .. ' '
                    item.menu = ({
                        buffer = "[Buf]",
                        nvim_lsp = "[LSP]",
                        luasnip = "[Snip]",
                        neorg = "[Neorg]",
                    })[entry.source.name]

                    return item
                end,
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            mapping = {
                ['<Tab>'] = function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    else
                        fallback()
                    end
                end,
                ['<S-Tab>'] = function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    else
                        fallback()
                    end
                end,
                ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
                ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
                ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
                ['<C-y>'] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = true,
                }, { "i", "c" }),
                ['<C-e>'] = cmp.mapping({
                    i = cmp.mapping.abort(),
                    c = cmp.mapping.close(),
                }),
                ['<C-CR>'] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = true,
                }, { "i", "c" }),
            },
            sources = cmp.config.sources({
                { name = 'nvim_lsp', max_item_count = 5 },
                { name = "nvim_lua", max_item_count = 2 },
                {
                    name = 'buffer',
                    option = {
                        keyword_pattern = [[\k\+]] -- non-ascii letters
                    },
                    max_item_count = 2,
                    keyword_length = 3,
                },
                { name = "path" },
                { name = 'luasnip' },
                { name = "neorg" },
                -- { name = 'spell' },
            })
        }
    end
}
