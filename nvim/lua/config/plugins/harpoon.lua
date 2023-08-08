return {
    'ThePrimeagen/harpoon',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = require('config.utils').get_lazy_keys_for('harpoon', {
        { '<leader>hn', require("harpoon.mark").add_file, desc = 'add file' },
        { '<leader>hh', require("harpoon.ui").toggle_quick_menu, desc = 'toggle files menu' },
        { '<leader>hf', function() require("harpoon.ui").nav_file(1) end, desc = 'go to file 1' },
        { '<leader>hd', function() require("harpoon.ui").nav_file(2) end, desc = 'go to file 2' },
        { '<leader>hs', function() require("harpoon.ui").nav_file(3) end, desc = 'go to file 3' },
        { '<leader>ha', function() require("harpoon.ui").nav_file(4) end, desc = 'go to file 4' },
        { '<leader>hc', require("harpoon.cmd-ui").toggle_quick_menu, desc = 'toggle commands menu' },
        { '<leader>hr', function() require("harpoon.term").sendCommand(1, 1) end, desc = 'run command 1' },
        { '<leader>he', function() require("harpoon.term").sendCommand(1, 1) end, desc = 'run command 2' },
        { '<leader>hw', function() require("harpoon.term").sendCommand(1, 1) end, desc = 'run command 3' },
        { '<leader>hq', function() require("harpoon.term").sendCommand(1, 1) end, desc = 'run command 4' },
        { '<leader>ht', function() require("harpoon.term").gotoTerminal(1) end, desc = 'go to terminal 1' },
    }),
    opts = {
        global_settings = {
            -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
            enter_on_sendcmd = true,
        }
    }
}
