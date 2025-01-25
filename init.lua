
require('packer').startup(function(use)
  
  -- Package Manager
  use 'wbthomason/packer.nvim'

  -- Code completition
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Multi row editing
  use 'mg979/vim-visual-multi'

  -- Side navegation pane
  use 'nvim-tree/nvim-tree.lua'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- FZF
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- GitGutter
  use 'airblade/vim-gitgutter'

  -- Git Blame
  use {
    'FabijanZulj/blame.nvim',
    config = function()
      require('blame').setup {}
    end
  }

  -- Lua Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Ruby Support
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = false },
      })
    end
  }

  -- Theme
  use { "catppuccin/nvim", as = "catppuccin-mocha" }

end)

require('config.general')

-- Set up Telescope With FZF
require('telescope').load_extension('fzf')

require('config.ntree')

require('config.keymaps')

require('config.cmp')

require('config.lualine')
