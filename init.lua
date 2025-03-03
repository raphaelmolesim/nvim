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


  -- LazyGit
  use({
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
        "nvim-lua/plenary.nvim",
    },
  })

  -- GitHub Copilot
  use({
		"github/copilot.vim",
		config = function()
			-- Optional: Add any configuration or key mappings here
		end
	})

  -- AutoSave
  use({
	  "Pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup({
				enabled = true,
				execution_message = {
					message = function() -- message to print on save
						return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
					end,
					dim = 0.18, -- dim the color of `message`
					cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
				},
				trigger_events = {"InsertLeave", "TextChanged"}, -- vim events that trigger auto-save. See :h events
				condition = function(buf)
					local fn = vim.fn
					local utils = require("auto-save.utils.data")

					if
						fn.getbufvar(buf, "&modifiable") == 1 and
						utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
						return true -- met condition(s), can save
					end
					return false -- can't save
				end,
				write_all_buffers = false, -- write all buffers when the current one meets `condition`
				debounce_delay = 135, -- saves the file at most every `debounce_delay` milliseconds
				callbacks = { -- functions to be executed at different intervals
					enabling = nil, -- ran when enabling auto-save
					disabling = nil, -- ran when disabling auto-save
					before_asserting_save = nil, -- ran before checking `condition`
					before_saving = nil, -- ran before doing the actual save
					after_saving = nil -- ran after doing the actual save
				}
		  })
	  end
  })

  use "nvim-lua/plenary.nvim"
  use "ThePrimeagen/harpoon"

  use 'rcarriga/nvim-notify'

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
end)

vim.g.copilot_node_command = "~/.asdf/installs/nodejs/20.5.0/bin/node"

require('config.general')

require('config.telescope')

require('config.ntree')

require('config.keymaps')

require('config.cmp')

require('config.lualine')

require('config.clipboard')

require('config.session_save')

require('config.harpoon')

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

require('config.bufferline')
