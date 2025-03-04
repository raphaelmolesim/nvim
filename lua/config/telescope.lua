local telescope = require("telescope")

-- Set up Telescope With FZF
telescope.load_extension('fzf')

local actions = require("telescope.actions")

telescope.setup({
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

telescope.load_extension("live_grep_args")



