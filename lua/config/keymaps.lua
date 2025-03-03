vim.notify = require("notify")

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
vim.api.nvim_set_keymap('n', 'lg', ':LazyGit<CR>', { noremap = true, silent = true })

-- Copy relative path
vim.api.nvim_set_keymap('n', 'rp', ':let @" = expand("%")<CR>', { noremap = true, silent = true })
-- Copy relative path to clipboard
vim.api.nvim_set_keymap('n', 'rc', ':let @+ = expand("%")<CR>', { noremap = true, silent = true })
-- Show relative path
vim.keymap.set("n", "<leader>f", function()
    vim.notify(vim.fn.expand("%:p:."), vim.log.levels.INFO, { title = "File Path" })
end)


-- Select all
vim.api.nvim_set_keymap('n', 'sa', 'ggVG', { noremap = true, silent = true })

-- Set files no not open collapsed
vim.opt.foldenable = false

-- Quit
vim.api.nvim_set_keymap('n', '<C-c>', ':qall<CR>', { noremap = true, silent = true })

-- New file
vim.api.nvim_set_keymap('n', 'nf', ':enew<CR>', { noremap = true, silent = true })

-- Resize window
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- Copy to clipboard
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })

-- Paste from clipboard
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })

-- Select a lines with Shit + Arrow from insert mode
vim.api.nvim_set_keymap('i', '<S-Down>', '<Esc>lvj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Up>', '<Esc>lvk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Right>', '<Esc>lvl', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-Left>', '<Esc>lvh', { noremap = true, silent = true })

-- Continually move cursor in the beginning of line
vim.api.nvim_set_keymap('n', '<Left>', 'col(".") == 1 ? "<Up>$" : "<Left>"', { noremap = true, expr = true, silent = true })
-- Continually move cursor in the beginning of line
vim.api.nvim_set_keymap('n', '<Right>', 'col(".") == col("$") - 1 ? "<Down>0" : "<Right>"', { noremap = true, expr = true, silent = true })

vim.api.nvim_set_keymap('i', '<Left>', 'col(".") == 1 ? "<Esc><Up>A" : "<Left>"', { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', 'col(".") == col("$") ? "<Esc><Down>0i" : "<Right>"', { noremap = true, expr = true, silent = true })

-- Select the full line from insert mode
vim.api.nvim_set_keymap('i', '<S-V>', '<Esc>V', { noremap = true, silent = true })

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
