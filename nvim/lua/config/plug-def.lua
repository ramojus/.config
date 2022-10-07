local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap = false
-- bootsrap packer
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    packer_bootstrap = true
    vim.api.nvim_command("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    vim.api.nvim_command "packadd packer.nvim"
end

vim.cmd [[
    augroup packer_config
    autocmd!
    autocmd BufWritePost plug-def.lua source <afile>
    augroup end
]]

-- TODO: FIX: jfkdsljfdkl
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("Packer failed")
    return
end

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- use 'mountain-theme/vim'
    -- use 'Mofiqul/vscode.nvim'
    -- use 'NTBBloodbath/doom-one.nvim'
    -- use 'AlessandroYorba/Alduin' -- using modified alduin
    -- use 'sainnhe/gruvbox-material'
    -- use 'metalelf0/jellybeans-nvim'
    -- use 'savq/melange'
    -- use 'wadackel/vim-dogrun'
    -- use 'ishan9299/modus-theme-vim'
    use { 'rktjmp/lush.nvim' }
    use {
        "mcchrish/zenbones.nvim",
        requires = "rktjmp/lush.nvim"
    }
    use {
        -- '~/dev/meliora/neovim',
        'meliora-theme/neovim',
        config = function()
            require 'meliora'.setup {
                dim_inactive = true,
                neutral = true
            }
            vim.opt.background = "dark"
            -- vim.cmd("colorscheme meliora")
        end
    }
    use 'catppuccin/nvim'

    use {
        'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
        config = function()
            require 'config.plugins.tree-sitter'
        end,
    }
    use 'rktjmp/shipwright.nvim'

    use { 'nvim-treesitter/playground', cmd = 'TSPlaygroundToggle' }

    use 'neovim/nvim-lspconfig'
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    use 'jose-elias-alvarez/null-ls.nvim'
    use { 'simrat39/rust-tools.nvim', ft = { "rust" } }
    -- use {
    --     'kdheepak/JuliaFormatter.vim',
    --     ft = { "julia" },
    --     config = function()
    --         vim.api.nvim_buf_set_keymap("n", "<leader>lf", ":JuliaFormatterFormat")
    --     end
    -- }
    use {
        'j-hui/fidget.nvim',
        config = function()
            require 'fidget'.setup {}
        end,
    }
    -- use {
    --     'vigoux/notifier.nvim',
    --     config = function()
    --         require 'notifier'.setup {
    --             components = { -- Order of the components to draw from top to bottom (first nvim notifications, then lsp)
    --                 "nvim", -- Nvim notifications (vim.notify and such)
    --                 -- "lsp"  -- LSP status updates
    --             },
    --             notify = {
    --                 clear_time = 2000, -- Time in milisecond before removing a vim.notifiy notification, 0 to make them sticky
    --                 min_level = vim.log.levels.INFO, -- Minimum log level to print the notification
    --             },
    --         }
    --     end
    -- }
    use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }
    use {
        'lervag/vimtex',
        config = function()
            require 'config.plugins.vimtex'
        end,
    }
    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end,
        config = function()
            require 'config.plugins.firenvim'
        end,
    }

    use {
        'hrsh7th/nvim-cmp',
        config = function()
            require 'config.plugins.cmp'
        end,
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lua'
    use 'f3fora/cmp-spell'
    use 'saadparwaiz1/cmp_luasnip'
    use {
        'L3MON4D3/LuaSnip',
        config = function()
            require 'config.plugins.luasnip'
        end,
    }

    use 'tpope/vim-surround'
    use {
        'numToStr/Comment.nvim',
        config = function()
            require 'config.plugins.comment'
        end,
    }
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
        ft = { "markdown" }
    })
    use {
        'jakewvincent/mkdnflow.nvim',
        ft = { "markdown" },
        rocks = 'luautf8',
        config = function()
            require 'config.plugins.mkdnflow'
        end
    }

    use {
        'mhinz/vim-signify',
        config = function()
            require 'config.plugins.signify'
        end,
    }

    use { 'mbbill/undotree', cmd = { "UndotreeToggle" } }
    use {
        'nvim-telescope/telescope.nvim', requires = 'nvim-lua/popup.nvim',
        config = function()
            require 'config.plugins.telescope'
        end,
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', after = 'telescope.nvim' }
    use { 'nvim-telescope/telescope-symbols.nvim', after = 'telescope.nvim' }
    use {
        'kyazdani42/nvim-tree.lua',
        config = function()
            require 'config.plugins.nvim-tree'
        end,
    }
    use {
        'akinsho/nvim-toggleterm.lua',
        config = function()
            require 'config.plugins.toggleterm'
        end,
    }
    use 'mhinz/vim-startify'
    -- use {
    --     "Pocco81/true-zen.nvim",
    --     ft = {"markdown"},
    --     config = function()
    --          require 'config.plugins.true-zen'
    --     end,
    -- }

    use { 'ThePrimeagen/vim-be-good', cmd = "VimBeGood" }
    use 'ThePrimeagen/harpoon'

    use 'kyazdani42/nvim-web-devicons'
    use {
        'windwp/nvim-autopairs',
        config = function()
            require 'nvim-autopairs'.setup()
        end,
    }
    use { 'ekickx/clipboard-image.nvim', ft = { "markdown" } }
    use {
        'p00f/nvim-ts-rainbow',
        config = function()
            require 'config.plugins.ts-rainbow'
        end,
    }
    use {
        'dstein64/nvim-scrollview',
        config = function()
            require 'config.plugins.scrollview'
        end,
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require 'config.plugins.indent-blankline'
        end,
    }
    use { 'rebelot/heirline.nvim',
        config = function()
            require 'config.plugins.heirline'
        end,
    }
    use 'SmiteshP/nvim-navic'
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require 'config.plugins.gitsigns'
        end
    }

    use 'nvim-lua/plenary.nvim'

    use 'lewis6991/impatient.nvim'

    if packer_bootstrap then
        require 'packer'.sync()
    end
end)
