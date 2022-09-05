require("catppuccin").setup({
    transparent_background = false,
    term_colors = false,
    styles = {
        comments = "NONE",
        functions = "NONE",
        keywords = "NONE",
        strings = "NONE",
        variables = "NONE",
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = "NONE",
                hints = "NONE",
                warnings = "NONE",
                information = "NONE",
            },
            underlines = {
                errors = "underline",
                hints = "underline",
                warnings = "underline",
                information = "underline",
            },
        },
        lsp_trouble = false,
        lsp_saga = true,
        gitgutter = false,
        gitsigns = false,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = true,
        },
        which_key = false,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = true,
        },
        dashboard = false,
        neogit = false,
        vim_sneak = false,
        fern = false,
        barbar = false,
        bufferline = false,
        markdown = true,
        lightspeed = false,
        ts_rainbow = true,
        hop = false,
        cmp = true,
    },
})

vim.cmd[[colorscheme catppuccin]]
