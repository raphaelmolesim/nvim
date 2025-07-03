require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
    }
})

-- mark file as a bookmark
vim.api.nvim_set_keymap('n', 'hm', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })

-- go to bookmark though telescope
vim.api.nvim_set_keymap('n', 'hg', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true })

-- delete bookmark
vim.api.nvim_set_keymap('n', 'hd', ':lua require("harpoon.mark").rm_file()<CR>', { noremap = true, silent = true })
