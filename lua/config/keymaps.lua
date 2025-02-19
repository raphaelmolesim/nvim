-- Custom shortcuts
vim.api.nvim_set_keymap(
  'n', -- Normal mode
  '<C-f>', -- Keybinding
  "<cmd>lua require('telescope.builtin').live_grep()<CR>", -- Command
  { noremap = true, silent = true } -- Options
)

vim.api.nvim_set_keymap(
  'n', -- Normal mode
  '<C-p>', -- Keybinding
  "<cmd>lua require('telescope.builtin').find_files()<CR>", -- Command
  { noremap = true, silent = true } -- Options
)

-- Window resize
vim.api.nvim_set_keymap('n', '<C-w>1', ':vertical resize 180<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>2', ':vertical resize 100<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>3', ':vertical resize 30<CR>', { noremap = true, silent = true })

-- LazyGit
vim.api.nvim_set_keymap('n', 'gg', ':LazyGit<CR>', { noremap = true, silent = true })

-- Copy relative path
vim.api.nvim_set_keymap('n', 'rp', ':let @" = expand("%")<CR>', { noremap = true, silent = true })

-- Quit
vim.api.nvim_set_keymap('n', '<C-c>', ':qall<CR>', { noremap = true, silent = true })

-- New file
vim.api.nvim_set_keymap('n', 'nf', ':enew<CR>', { noremap = true, silent = true })

-- Resize window
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- List buffers
vim.api.nvim_set_keymap(
  'n', -- Normal mode
  '<S-Tab>', -- Keybinding
  "<cmd>lua require('telescope.builtin').buffers()<CR>", -- Command
  { noremap = true, silent = true } -- Options
)

-- Toggle Sidebar Menu
vim.api.nvim_set_keymap(
  'n', -- Normal mode
  '<C-b>', -- Keybinding
  ":NvimTreeFindFileToggle<CR>", -- Command
  { noremap = true, silent = true } -- Options
)

-- Move line in the Insert mode
vim.api.nvim_set_keymap('i', '<M-Up>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<M-Down>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
