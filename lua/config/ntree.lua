-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Set the NvimTree to not open when retoring a session
vim.g.nvim_tree_respect_buf_cwd = 1
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
		require("nvim-tree.api").tree.close()
  end,
})


-- Define Ntree regular size  
require('nvim-tree').setup({
	view = {
		width = 30,
	},
})


