return {
    'nvim-telescope/telescope.nvim',
    keys = function()
        return require('utils').get_lazy_keys_for('telescope', {
            { '<leader>ff', require('telescope.builtin').find_files, desc = 'files' },
            { '<leader>fF', ':Telescope find_files cwd=~ hidden=1<cr>', desc = 'files from home' },
            { '<leader>fc', ':Telescope find_files cwd=~/.config<cr>', desc = 'files from .config' },
            { '<leader>fg', require('telescope.builtin').live_grep, desc = 'grep in pwd' },
            { '<leader>fb', require('telescope.builtin').buffers, desc = 'buffers' },
            { '<leader>fh', require('telescope.builtin').help_tags, desc = 'help tags' },
            { '<leader>fH', require('telescope.builtin').highlights, desc = 'highlights' },
            { '<leader>fp', require('telescope.builtin').planets, desc = 'planets' },
            { '<leader>fm', require('telescope.builtin').man_pages, desc = 'man pages' },
            { '<leader>fr', require('telescope.builtin').reloader, desc = 'reloader' },
            { '<leader>fk', require('telescope.builtin').keymaps, desc = 'keymaps' },
        })
    end,
    opts = function()
        local actions = require('telescope.actions')
        return {
            defaults = {
                layout_strategy = "horizontal",
                -- remove stuff from paths when possible so names are still clear
                path_display = { "smart" },
                layout_config = {
                    width = 0.7,
                    height = 0.7,
                    horizontal = {
                        preview_width = 0.65,
                    },
                },
                mappings = {
                    n = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-n>"] = require("telescope.actions").cycle_history_next,
                        ["<C-p>"] = require("telescope.actions").cycle_history_prev,
                    },
                    i = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-n>"] = require("telescope.actions").cycle_history_next,
                        ["<C-p>"] = require("telescope.actions").cycle_history_prev,
                    },
                },
                pickers = {
                    buffers = {
                        mappings = {
                            i = {
                                ["<c-d>"] = "delete_buffer",
                            },
                            n = {
                                ["<c-d>"] = "delete_buffer",
                            }
                        }
                    }
                },
                extensions = {
                    fzf = {
                        fuzzy = true,                    -- false will only do exact matching
                        override_generic_sorter = false, -- override the generic sorter
                        override_file_sorter = true,     -- override the file sorter
                        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                    },
                },
                set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
            },
        }
    end
}
