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

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("Packer failed")
    return
end

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use { "shortcuts/no-neck-pain.nvim", tag = "*" }
    use {
        -- '~/dev/mellifluous.nvim',
        'ramojus/mellifluous.nvim',
        config = function()
            require 'config.plugins.mellifluous'
        end,
        requires = "rktjmp/lush.nvim",
    }

    use 'catppuccin/nvim'
    use {
        'rebelot/kanagawa.nvim',
    }

    use {
        'brenoprata10/nvim-highlight-colors',
        config = function()
            require('nvim-highlight-colors').setup {
                enable_named_colors = false,
            }
        end,
    }
    use {
        'echasnovski/mini.misc',
        config = function()
            require 'mini.misc'.setup()
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
        config = function()
            require 'config.plugins.tree-sitter'
        end,
    }
    use 'rktjmp/shipwright.nvim'
    use { 'kaarmu/typst.vim', ft = { 'typst' } }

    use { 'nvim-treesitter/playground', cmd = 'TSPlaygroundToggle' }

    use 'neovim/nvim-lspconfig'
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    -- use 'jose-elias-alvarez/null-ls.nvim'
    use { 'simrat39/rust-tools.nvim', ft = { "rust" } }
    use {
        'kdheepak/JuliaFormatter.vim',
        ft = { "julia" },
        config = function()
            vim.api.nvim_buf_set_keymap("n", "<leader>lf", ":JuliaFormatterFormat")
        end
    }
    use {
        'j-hui/fidget.nvim',
        config = function()
            require 'fidget'.setup {}
        end,
        branch = 'legacy'
    }
    use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }
    use {
        'lervag/vimtex',
        config = function()
            require 'config.plugins.vimtex'
        end,
    }
    use 'ray-x/lsp_signature.nvim'

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
        'jubnzv/mdeval.nvim',
        ft = { "markdown" },
        config = function()
            require 'config.plugins.mdeval'
        end
    }
    use {
        'JellyApple102/flote.nvim', -- per project notes
        config = function()
            require 'flote'.setup()
        end
    }
    use {
        "nvim-neorg/neorg",
        run = ":Neorg sync-parsers",
        config = function()
            require 'config.plugins.neorg'
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
        'akinsho/toggleterm.nvim',
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
    use {
        'ThePrimeagen/harpoon',
        config = function()
            require 'config.plugins.harpoon'
        end,
    }

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
    -- use {
    --     'lukas-reineke/indent-blankline.nvim',
    --     config = function()
    --         require 'config.plugins.indent-blankline'
    --     end,
    -- }
    use { 'rebelot/heirline.nvim',
        config = function()
            require 'config.plugins.heirline'
        end,
    }
    -- use 'SmiteshP/nvim-navic'
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require 'config.plugins.gitsigns'
        end
    }
    use 'tpope/vim-fugitive'
    -- use {
    --     '~/dev/ft-highlight',
    --     config = function()
    --         require('ft-highlight').setup()
    --     end
    -- }
    use {
        'echasnovski/mini.colors',
        config = function()
            require('mini.colors').setup()
        end
    }

    use 'nvim-lua/plenary.nvim'

    use 'lewis6991/impatient.nvim'

    if packer_bootstrap then
        require 'packer'.sync()
    end
end)
