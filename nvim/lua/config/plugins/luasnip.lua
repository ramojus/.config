local ls = require'luasnip'
ls.config.setup({
    -- This tells LuaSnip to remember to keep around the last snippet.
    -- You can jump back into it even if you move outside of the selection
    history = true,

    -- This one is cool cause if you have dynamic snippets, it updates as you type!
    updateevents = "TextChanged,TextChangedI",

    -- Autosnippets:
    enable_autosnippets = true,

    -- Crazy highlights!!
    -- #vid3
    -- ext_opts = nil,
    -- ext_opts = {
    --     [luasnip.util.types.choiceNode] = {
    --         active = {
    --             virt_text = { { "<-", "Error" } },
    --         },
    --     },
    -- },
})

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

_G.luasnip_jump_next = function()
    if ls and ls.expand_or_jumpable() then
        return t("<Plug>luasnip-expand-or-jump")
    end
    return ""
end

_G.luasnip_jump_prev = function()
    if ls and ls.jumpable(-1) then
        return t("<Plug>luasnip-jump-prev")
    end
    return ""
end

vim.api.nvim_set_keymap("i", "<C-j>", "v:lua.luasnip_jump_next()", {expr = true})
vim.api.nvim_set_keymap("s", "<C-j>", "v:lua.luasnip_jump_next()", {expr = true})
vim.api.nvim_set_keymap("i", "<C-k>", "v:lua.luasnip_jump_prev()", {expr = true})
vim.api.nvim_set_keymap("s", "<C-k>", "v:lua.luasnip_jump_prev()", {expr = true})

-- vim.keymap.set({ "i", "s" }, "<c-k>", function()
--   if ls.expand_or_jumpable() then
--     ls.expand_or_jump()
--   end
-- end, { silent = true })
--
-- vim.keymap.set({ "i", "s" }, "<c-j>", function()
--   if ls.jumpable(-1) then
--     ls.jump(-1)
--   end
-- end, { silent = true })
--
-- vim.keymap.set("i", "<c-l>", function()
--   if ls.choice_active() then
--     ls.change_choice(1)
--   end
-- end)


