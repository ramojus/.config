return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-telescope/telescope-ui-select.nvim',
    },
    -- keys = function()
    --     return require('utils').get_lazy_keys_for('telescope', {
    --         { '<leader>sf', require('telescope.builtin').find_files, desc = 'files' },
    --         { '<leader>sF', ':Telescope find_files cwd=~ hidden=1<cr>', desc = 'files from home' },
    --         { '<leader>sc', ':Telescope find_files cwd=~/.config<cr>', desc = 'files from .config' },
    --         { '<leader>sg', require('telescope.builtin').live_grep, desc = 'grep in pwd' },
    --         { '<leader>sb', require('telescope.builtin').buffers, desc = 'buffers' },
    --         { '<leader>sh', require('telescope.builtin').help_tags, desc = 'help tags' },
    --         { '<leader>sH', require('telescope.builtin').highlights, desc = 'highlights' },
    --         { '<leader>sp', require('telescope.builtin').planets, desc = 'planets' },
    --         { '<leader>sm', require('telescope.builtin').man_pages, desc = 'man pages' },
    --         { '<leader>sr', require('telescope.builtin').reloader, desc = 'reloader' },
    --         { '<leader>sk', require('telescope.builtin').keymaps, desc = 'keymaps' },
    --     })
    -- end,
    cmd = 'Telescope',

    setup = function()
        local actions = require('telescope.actions')
        require('telescope').setup{
            defaults = {
                layout_strategy = 'horizontal',
                -- remove stuff from paths when possible so names are still clear
                path_display = { 'smart' },
                layout_config = {
                    width = 0.7,
                    height = 0.7,
                    horizontal = {
                        preview_width = 0.65,
                    },
                },
                mappings = {
                    n = {
                        ['<C-j>'] = actions.move_selection_next,
                        ['<C-k>'] = actions.move_selection_previous,
                        ['<C-n>'] = require('telescope.actions').cycle_history_next,
                        ['<C-p>'] = require('telescope.actions').cycle_history_prev,
                    },
                    i = {
                        ['<C-j>'] = actions.move_selection_next,
                        ['<C-k>'] = actions.move_selection_previous,
                        ['<C-n>'] = require('telescope.actions').cycle_history_next,
                        ['<C-p>'] = require('telescope.actions').cycle_history_prev,
                    },
                },
                pickers = {
                    buffers = {
                        mappings = {
                            i = {
                                ['<c-d>'] = 'delete_buffer',
                            },
                            n = {
                                ['<c-d>'] = 'delete_buffer',
                            }
                        }
                    }
                },
                extensions = {
                    fzf = {
                        fuzzy = true,                    -- false will only do exact matching
                        override_generic_sorter = false, -- override the generic sorter
                        override_file_sorter = true,     -- override the file sorter
                        case_mode = 'smart_case',        -- or 'ignore_case' or 'respect_case'
                    },
                },
                set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
            },
        }

        require('telescope').load_extension('ui-select')
    end
}
