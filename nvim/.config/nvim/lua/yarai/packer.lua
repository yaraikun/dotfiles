vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "catppuccin/nvim", as = "catppuccin" }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use('theprimeagen/harpoon')
    use('debugloop/telescope-undo.nvim')
    use({ 'tpope/vim-fugitive' })

    use({ 'williamboman/mason.nvim' })
    use({ 'williamboman/mason-lspconfig.nvim' })
    use({ 'neovim/nvim-lspconfig' })
    use({ 'hrsh7th/nvim-cmp' })
    use({ 'hrsh7th/cmp-nvim-lsp' })
    use({ 'L3MON4D3/LuaSnip' })

    use({ 'theprimeagen/vim-be-good' })
end)
