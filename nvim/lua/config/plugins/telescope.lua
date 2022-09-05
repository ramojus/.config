-- }
-- vim.cmd([[PackerLoad telescope-fzf-native.nvim]])
-- vim.cmd([[PackerLoad telescope-symbols.nvim]])
local actions = require("telescope.actions")
local actions_layout = require("telescope.actions.layout")
local themes = require("telescope.themes")


require("telescope").setup({
    -- defaults = themes.get_ivy({
    --     selection_caret = " ",
    --     -- layout_strategy = "horizontal",
    --     -- selection_strategy = "reset",
    --     -- remove stuff from paths when possible so names are still clear
    --     -- path_display = { "smart" },
    --     prompt_prefix = "   ",
    --     -- shorten_path = true,
    --     entry_prefix = " ",
    --     -- layout_config = {
    --     --     width = 0.90,
    --     --     height = 0.5,
    --     --     anchor = "M",
    --     --     prompt_position = "top",
    --     --     horizontal = {
    --     --         preview_width = 0.65,
    --     --     },
    --     --     vertical = {
    --     --         preview_width = 0.65,
    --     --         width = 0.9,
    --     --         height = 0.95,
    --     --         preview_height = 0.5,
    --     --     },
    --     --     flex = {
    --     --         preview_width = 0.65,
    --     --         horizontal = {
    --     --             -- preview_width = 0.9,
    --     --         },
    --     --     },
    --     -- },
    --     mappings = {
    --         n = {
    --             ["<C-j>"] = actions.move_selection_next,
    --             ["<C-k>"] = actions.move_selection_previous,
    --             ["<C-l>"] = actions_layout.toggle_preview,
    --             ["<C-n>"] = require("telescope.actions").cycle_history_next,
    --             ["<C-p>"] = require("telescope.actions").cycle_history_prev,
    --         },
    --         i = {
    --             ["<C-j>"] = actions.move_selection_next,
    --             ["<C-k>"] = actions.move_selection_previous,
    --             ["<C-l>"] = actions_layout.toggle_preview,
    --             ["<C-n>"] = require("telescope.actions").cycle_history_next,
    --             ["<C-p>"] = require("telescope.actions").cycle_history_prev,
    --         },
    --     },
    --     pickers = {
    --         buffers = {
    --             mappings = {
    --                 i = {
    --                     ["<c-d>"] = "delete_buffer",
    --                 },
    --                 n = {
    --                     ["<c-d>"] = "delete_buffer",
    --                 }
    --             }
    --         }
    --     },
    --     extensions = {
    --         fzf = {
    --             fuzzy = true, -- false will only do exact matching
    --             override_generic_sorter = false, -- override the generic sorter
    --             override_file_sorter = true, -- override the file sorter
    --             case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    --         },
    --     },
    --     set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    -- }),
})

