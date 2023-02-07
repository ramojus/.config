require("toggleterm").setup {
    -- size can be a number or function which is passed the current terminal
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<c-\>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    -- shade_filetypes = { "none" },
    shade_terminals = true,
    shading_factor = 20, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = true,
    direction = 'vertical', -- 'vertical' | 'horizontal' | 'window' | 'float',
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
    highlights = {
        NormalFloat = {
            link = 'NormalFloat'
        },
        FloatBorder = {
            link = 'FloatBorder'
        },
    },
    -- This field is only relevant if direction is set to 'float'
    float_opts = {
    --     -- The border key is *almost* the same as 'nvim_open_win'
    --     -- see :h nvim_open_win for details on borders however
    --     -- the 'curved' border is a custom border type
    --     -- not natively supported but implemented in this plugin.
        border = 'single', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    --         --   -- border = "FloatBorder",
    --         --   -- background = "Float",
    }
}

local Terminal = require('toggleterm.terminal').Terminal
local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float' })
local hmm      = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float' })

function LazygitToggle()
    lazygit:toggle()
end

function HmmToggle()
    hmm:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>gl", "<cmd>lua LazygitToggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gh", "<cmd>lua HmmToggle()<CR>", { noremap = true, silent = true })
