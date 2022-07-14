
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
	--use {'kyazdani42/nvim-tree.lua',requires = {'kyazdani42/nvim-web-devicons'},tag = 'nightly'}

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }
 


	-- LSP config
	use 'neovim/nvim-lspconfig'
	use "williamboman/nvim-lsp-installer"
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  	use 'L3MON4D3/LuaSnip'
  	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp


	-- lua line
    use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

	-- tabby
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
	use {"windwp/nvim-autopairs",config = function() require("nvim-autopairs").setup {} end}

	
    -- hop (easy-motion)
	use {'phaazon/hop.nvim',branch = 'v1',config = function() require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' } end}

	
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
	
    -- autoCloseTag (html)
	use 'alvan/vim-closetag'
	

    -- lspsaga
	use 'tami5/lspsaga.nvim'


    -- tree-sitter
    use {'nvim-treesitter/nvim-treesitter', run = function() require('nvim-treesitter.install').update({ with_sync = true }) end}
    -- use 'nvim-treesitter/highlight.lua'
    use 'p00f/nvim-ts-rainbow'


    -- toggle term
    use 'akinsho/toggleterm.nvim'


    -- kitty
    use "fladson/vim-kitty"


    --colorizer
    use 'norcalli/nvim-colorizer.lua'


    -- twilight
    use {"folke/twilight.nvim", config = function() require("twilight").setup {} end}


    -- cursor Line
    use 'RRethy/vim-illuminate'


    -- Dashboard
    use 'glepnir/dashboard-nvim'


    -- Comments
    use {'numToStr/Comment.nvim', config = function() require('Comment').setup() end}


    -- indent guides
    use "lukas-reineke/indent-blankline.nvim"


    --multicursor
    use 'terryma/vim-multiple-cursors'


    --snippets
    use "rafamadriz/friendly-snippets"
    use 'mlaursen/vim-react-snippets'
    use 'hrsh7th/vim-vsnip'
    use {'dsznajder/vscode-es7-javascript-react-snippets', run = 'yarn install --frozen-lockfile && yarn compile'}


    --folding
    use { 'anuvyklack/pretty-fold.nvim', requires = 'anuvyklack/nvim-keymap-amend', config = function() require('pretty-fold').setup() require('pretty-fold.preview').setup() end}


    -- scroll
    use'yuttie/comfortable-motion.vim'
end)


