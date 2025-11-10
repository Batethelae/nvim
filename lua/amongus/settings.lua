--line number and sign column
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

--borders around windows
vim.opt.winborder = "rounded"

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- smart indenting
vim.opt.smartindent = true

--line wrapping
vim.opt.wrap = true
vim.opt.linebreak = true 
-- this is for scrolling in linewrapped lines (not for smooth scrolling) 
vim.opt.smoothscroll = true

--search highlighting
vim.opt.incsearch = true
vim.opt.hlsearch = true
-- unhighlight
-- this can also be done with <CTRL>l
vim.keymap.set('n','<esc><esc>',':noh<CR>')


--minimum amount of lines about/below cursor
vim.opt.scrolloff = 8


-- explorer (such as netrw)
vim.keymap.set('n', '<leader>e', ':Ex<CR>')

--disable U (undo line)
vim.keymap.set('n', 'U', '<nop>')

--copy/paste into clipboard
    --yank/copy allows motion after in normal mode, but not in visual
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set({'v', 'x'}, '<leader>y', '"+y<CR>')
vim.keymap.set({'n', 'v', 'x'}, '<leader>p', '"+p<CR>')


--ctrl-backspace in insertmode to delete previous word
vim.keymap.set('i', '<C-backspace>', '<C-w>')
vim.keymap.set('c', '<C-backspace>', '<C-w>')
