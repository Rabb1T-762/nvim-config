-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- -- REPL environment
    -- use 'Olical/conjure'

    -- -- racket integration
    -- use 'wlangstroth/vim-racket'

    -- My Themes
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })

    use({
        'Shatur/neovim-ayu',
        as = 'ayu',
    })

    use({
        'ellisonleao/gruvbox.nvim',
        as = 'gruvbox',
    })

    use({
        "rebelot/kanagawa.nvim",
        as = 'kanagawa',
    })

    -- use 'tokyonight-night' in colors.lua ColorMePretty() for dark version
    use({
        'folke/tokyonight.nvim',
        as = 'tokyonight',
    })

    -- treesitter for incremental tree parsing and better syntax highlighting
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('nvim-lua/plenary.nvim')

    -- harpoon for binding files to shortcut keys for easy access
    use('ThePrimeagen/harpoon')

    -- access the undo/redo AST
    use('mbbill/undotree')

    -- vim git integration
    use('tpope/vim-fugitive')

    -- adds a symbol where you use enter
    use('lukas-reineke/indent-blankline.nvim')
    --  use('Yggdroot/indentLine')

    -- lsp integration
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- html snipits
    use {
        'mattn/emmet-vim',
        setup = function()
            print("setting emmet leader key")
            vim.g.user_emmet_leader_key = '<C-I>'
        end
    }

    -- shortcuts to comment diffent file types
    use('tpope/vim-commentary')

    -- Chat gippity and copilot
    use('github/copilot.vim');

end)
