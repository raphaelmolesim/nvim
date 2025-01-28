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
})





