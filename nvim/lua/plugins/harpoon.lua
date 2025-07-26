return {
    'ThePrimeagen/harpoon',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    branch = "harpoon2",
    keys = function()
        return require('utils').get_lazy_keys_for('harpoon', {
            { '<leader>hn',
                function()
                    require("harpoon"):list():append()
                    vim.notify("file added")
                end, desc = 'add file'
            },
            { '<M-h>', function() require("harpoon.ui"):toggle_quick_menu(require("harpoon"):list()) end, desc = 'toggle files menu' },
            { '<M-j>', function() require("harpoon"):list():select(1) end, desc = 'go to file 1' },
            { '<M-k>', function() require("harpoon"):list():select(2) end, desc = 'go to file 2' },
            { '<M-l>', function() require("harpoon"):list():select(3) end, desc = 'go to file 3' },
            { '<M-;>', function() require("harpoon"):list():select(4) end, desc = 'go to file 4' },
            { "<M-'>", function() require("harpoon"):list():select(5) end, desc = 'go to file 5' },
            -- { '<leader>hc', require("harpoon").toggle_quick_menu, desc = 'toggle commands menu' },
            -- { '<leader>hr', function() require("harpoon").sendCommand(1, 1) end, desc = 'run command 1' },
            -- { '<leader>he', function() require("harpoon").sendCommand(1, 1) end, desc = 'run command 2' },
            -- { '<leader>hw', function() require("harpoon").sendCommand(1, 1) end, desc = 'run command 3' },
            -- { '<leader>hq', function() require("harpoon").sendCommand(1, 1) end, desc = 'run command 4' },
            -- { '<leader>ht', function() require("harpoon").gotoTerminal(1) end, desc = 'go to terminal 1' },
        })
    end,
    setup = function()
        require('harpoon'):setup()
    end,
    -- opts = {
    -- },
}
