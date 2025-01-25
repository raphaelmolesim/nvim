-- Set Telescope to trigger an update event on Ntree
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTreeSync", { clear = true }),
  callback = function()
    if vim.bo.filetype ~= "NvimTree" then
      require('nvim-tree.api').tree.find_file({ open = true })
    end
  end,
})

-- Create a custom event to move Ntree to the active file
-- Define Ntree regular size
require('nvim-tree').setup({
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
    width = 30,
  },
})


