------------ Packer plugin management -------------------

return require('packer').startup(function()
  
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope lazy finder
  --[[use {
    'nvim-telescope/telescope.nvim', 
     requires = {
  	{'nvim-lua/plenary.nvim'},
  	{'nvim-treesitter/nvim-treesitter'}, 
	{'BurntSushi/ripgrep'},
        {'kyazdani42/nvim-web-devicons', opt = true}
     }
  }--]]

  -- File tree explorer
  --[[use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }--]]

  -- Status line
  use {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- 16bit color scheme sync with treesitter, LSP and lualine (optionnaly)
  -- use 'RRethy/nvim-base16'

  -- R integration in Nvim
  use 'jalvesaq/Nvim-R'

  -- Send text to command line
  use 'jalvesaq/vimcmdline'

  -- LSP
  use 'neovim/nvim-lspconfig'
 
  -- Completion engine
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

end)
