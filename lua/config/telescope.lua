-- Set up Telescope With FZF
require('telescope').load_extension('fzf')

local actions = require("telescope.actions")

require("telescope").setup({
  defaults = require("telescope.themes").get_dropdown({ 
    mappings = {
      n = {
        ["d"] = actions.delete_buffer, -- Map 'd' in normal mode to delete buffer
      },
    },
    layout_config = {
      width = 0.9,
      height = 0.5,
    },
  }),
  pickers = {
    buffers = {
      sort_mru = true,  -- Sort buffers by most recently used
      ignore_current_buffer = true, -- (optional) Don't show the current buffer first
    },
  },
})





