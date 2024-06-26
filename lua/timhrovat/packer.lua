-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "catppuccin/nvim", as = "catppuccin" }

    use(
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate', tag = '0.9.0' }
    )

    use "nvim-lua/plenary.nvim"

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use("mbbill/undotree")

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- nvim v0.7.2
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }

    use {
        "ggandor/leap.nvim",
        config = function() require("leap").set_default_keymaps() end
    }

    use 'jwalton512/vim-blade'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use { 'nvim-tree/nvim-web-devicons' }

    use "nvim-pack/nvim-spectre"

    use 'lukas-reineke/indent-blankline.nvim'

    use 'APZelos/blamer.nvim'

    use "tpope/vim-surround"

    use "windwp/nvim-ts-autotag"

    use({
        "hinell/duplicate.nvim",
        setup = function()
            vim.g["duplicate-nvim-config"] = {
                visual = {
                    selectAfter = true, -- true to select duplicated textpacker
                    block       = true  -- true to enable block-wise duplication
                }
            }
        end
    })

    use ({
        'kristijanhusak/vim-dadbod-ui',
        requires = {
            'tpope/vim-dadbod',
            'kristijanhusak/vim-dadbod-completion',
        },
        setup = function()
            vim.g.db_ui_use_nerd_fonts = 1
        end
    })
end)
