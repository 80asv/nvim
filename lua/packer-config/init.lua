
--     /  /\       /  /\         /  /\         /__/|         /  /\         /  /\    
--    /  /::\     /  /::\       /  /:/        |  |:|        /  /:/_       /  /::\   
--   /  /:/\:\   /  /:/\:\     /  /:/         |  |:|       /  /:/ /\     /  /:/\:\  
--  /  /:/~/:/  /  /:/~/::\   /  /:/  ___   __|  |:|      /  /:/ /:/_   /  /:/~/:/  
-- /__/:/ /:/  /__/:/ /:/\:\ /__/:/  /  /\ /__/\_|:|____ /__/:/ /:/ /\ /__/:/ /:/___
-- \  \:\/:/   \  \:\/:/__\/ \  \:\ /  /:/ \  \:\/:::::/ \  \:\/:/ /:/ \  \:\/:::::/
--  \  \::/     \  \::/       \  \:\  /:/   \  \::/~~~~   \  \::/ /:/   \  \::/~~~~ 
--   \  \:\      \  \:\        \  \:\/:/     \  \:\        \  \:\/:/     \  \:\     
--    \  \:\      \  \:\        \  \::/       \  \:\        \  \::/       \  \:\    
--     \__\/       \__\/         \__\/         \__\/         \__\/         \__\/   



return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
    use 'morhetz/gruvbox'
    use 'EdenEast/nightfox.nvim'
    use 'folke/tokyonight.nvim'

	-- Nvim-Tree
	use {
        'kyazdani42/nvim-tree.lua',
    	requires = {
      	    'kyazdani42/nvim-web-devicons', -- optional, for file icon
    	},
  		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- LSP config
	use 'neovim/nvim-lspconfig'
	use "williamboman/nvim-lsp-installer"
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  	use 'L3MON4D3/LuaSnip'

	-- lua line
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- barbar
	use {
  		'romgrk/barbar.nvim',
  		requires = {'kyazdani42/nvim-web-devicons'}
	}
	-- icons
	use 'onsails/lspkind.nvim'

	-- null-ls
        use 'jose-elias-alvarez/null-ls.nvim'
	--shade panels
	use 'sunjon/shade.nvim'
	--auto pairs
	use {
		"windwp/nvim-autopairs",
    		config = function() require("nvim-autopairs").setup {} end
	}

	-- hop (easy-motion)
	use {
		'phaazon/hop.nvim',
		branch = 'v1', -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  		end
	}

	-- telescope
	use {
  		'nvim-telescope/telescope.nvim',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

    	use { "nvim-telescope/telescope-file-browser.nvim" }
	
	-- autoCloseTag (html)
	use 'alvan/vim-closetag'
	-- lspsaga
	use 'tami5/lspsaga.nvim'

    -- tree-sitter

    -- use {
    --     'nvim-treesitter/nvim-treesitter',
    --     run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    -- }
    --

    -- toggle term
    use 'akinsho/toggleterm.nvim'
    -- kitty
    use "fladson/vim-kitty"
    
    --colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- twilight
    
    use {
        "folke/twilight.nvim",
        config = function()
        require("twilight").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
        end
    }

    -- cursor Line
    use 'RRethy/vim-illuminate'

    -- Dashboard
    use 'glepnir/dashboard-nvim'

    -- Comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- indent guides

    use "lukas-reineke/indent-blankline.nvim"


    --multicursor
    use 'terryma/vim-multiple-cursors'
end)


