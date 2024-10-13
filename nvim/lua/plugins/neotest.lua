return {
    -- {
    --     'mrcjkb/rustaceanvim',
    --     version = '^4', -- Recommended
    --     lazy = false, -- This plugin is already lazy
    --     ft = 'rust',
    --     -- keys = function()
    --     --     return require('utils').get_lazy_keys_for('neotest', {
    --     --     }
    --     -- end,
    -- },
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter"
        },
        config = function()
          -- require("neotest").setup({
          --   adapters = {
          --     require("rustaceanvim.neotest")
          --   }
          -- })
        end,
    },
}
