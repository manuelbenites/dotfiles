return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {'olimorris/onedarkpro.nvim'}
    use {'marko-cerovac/material.nvim'}
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use {'kyazdani42/nvim-web-devicons'}
    use {'neovim/nvim-lspconfig'} -- Configurations for Nvim LSP	
    use {'onsails/lspkind-nvim'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            require('nvim-treesitter.install').update({with_sync = true})
        end
    }
    use {'windwp/nvim-autopairs'}
    use {'windwp/nvim-ts-autotag'}
    use {'norcalli/nvim-colorizer.lua'}
    use {'jose-elias-alvarez/null-ls.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'tamton-aquib/staline.nvim'}
    use {'numToStr/Comment.nvim'}
    use {'JoosepAlviste/nvim-ts-context-commentstring'}
    use {'nvim-telescope/telescope.nvim'}
    use {'nvim-telescope/telescope-file-browser.nvim'}
    use {'folke/trouble.nvim'}
    use {'Tsuzat/NeoSolarized.nvim'}
    use {'williamboman/mason.nvim'}
    use {'williamboman/mason-lspconfig.nvim'}
    use {'MunifTanjim/prettier.nvim'}
end)
