-- set line wrapping when entering txt or md file
vim.api.nvim_create_autocmd({"BufEnter","BufWinEnter"}, {
    pattern = {"*.txt","*.md"},
    callback = function ()
        vim.opt.wrap = true
        vim.opt.linebreak = true
    end
})
