return {
    'stevearc/aerial.nvim',
    cmd = 'AerialToggle',
    opts = {
        on_attach = function(bufnr)
            -- Jump forwards/backwards with '{' and '}'
            vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
            vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
        end,
        show_guide = true,
        highlight_mode="split_width",
    }
}
