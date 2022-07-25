
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

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  
  -- install plugins + compile their configs
    vim.cmd [[packadd packer.nvim]]
    print "Installing packer. Close and reopen neovim when finished"
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()

	use 'wbthomason/packer.nvim'
    use 'morhetz/gruvbox'
    use 'EdenEast/nightfox.nvim'
    use 'folke/tokyonight.nvim'

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
  	use 'hrsh7th/cmp-buffer'
  	use 'hrsh7th/cmp-vsnip'
  	use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'


	-- lua line
    use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}


	-- Buffers
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


    --folding
    use{ 'anuvyklack/pretty-fold.nvim',
        config = function()
            require('pretty-fold').setup()
        end
    }

    use { 'anuvyklack/fold-preview.nvim',
        requires = 'anuvyklack/keymap-amend.nvim',
        config = function()
            require('fold-preview').setup()
        end
    }

    -- scroll
    use'yuttie/comfortable-motion.vim'
    
    if packer_bootstrap then
    require('packer').sync()
  end
end)


