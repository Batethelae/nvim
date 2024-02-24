-- set line wrapping when entering txt or md file
vim.api.nvim_create_autocmd({"BufEnter","BufWinEnter"}, {
    pattern = {"*.txt","*.md"},
    callback = function ()
        vim.opt.wrap = true
        vim.opt.linebreak = true
    end
})

-- stops when leaving md or txt file
-- may have problem when swtiching between windows that are not md/txt
vim.api.nvim_create_autocmd({"BufLeave", "BufWinLeave"}, {
    pattern = {"*.txt","*.md"},
    callback = function ()
        vim.opt.wrap = false
        vim.opt.linebreak = false
    end
})
