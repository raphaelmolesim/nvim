require("telescope").load_extension('harpoon')


-- mark file as a bookmark
vim.api.nvim_set_keymap('n', 'hm', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })

-- go to bookmark though telescope
vim.api.nvim_set_keymap('n', 'hg', ':Telescope harpoon marks<CR>', { noremap = true, silent = true })
