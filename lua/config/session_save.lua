vim.o.sessionoptions = "buffers,curdir,folds,globals,help,tabpages,winsize"

local session_file = vim.fn.stdpath("data") .. "/session.vim"
vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
        vim.cmd("mksession! " .. session_file)
    end,
})


local session_file = vim.fn.stdpath("data") .. "/session.vim"
if vim.fn.filereadable(session_file) == 1 then
    vim.cmd("source " .. session_file)
end

