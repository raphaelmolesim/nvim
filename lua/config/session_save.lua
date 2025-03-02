vim.o.sessionoptions = "buffers,curdir,folds,globals,help,tabpages,winsize"

-- Capture the initial directory when nvim starts.
local initial_dir = vim.fn.getcwd()
-- remove the first character if it is a slash
if initial_dir:sub(1,1) == "/" then
    initial_dir = initial_dir:sub(2)
end

-- Create a dedicated folder for sessions.
local session_dir = vim.fn.stdpath("data") .. "/sessions"
vim.fn.mkdir(session_dir, "p")

-- Generate a session file name by replacing slashes with underscores.
local session_file = session_dir .. "/" .. vim.fn.substitute(initial_dir, "[/]", "_", "g") .. ".vim"

vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()	
        vim.cmd("mksession! " .. session_file)
    end,
})

if vim.fn.filereadable(session_file) == 1 then
    vim.cmd("source " .. session_file)
end
