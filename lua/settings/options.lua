--line number and sign column
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"

--borders around windows
vim.o.winborder = "rounded"

-- tabs
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- smart indenting
vim.o.smartindent = true

--line wrapping
vim.o.wrap = true
vim.o.linebreak = true 
-- this is for scrolling in linewrapped lines (not for smooth scrolling) 
vim.o.smoothscroll = true

--search highlighting
vim.o.incsearch = true
vim.o.hlsearch = true
-- unhighlight
-- this can also be done with <CTRL>l
vim.keymap.set('n','<esc><esc>',':noh<CR>')


--minimum amount of lines about/below cursor
vim.o.scrolloff = 8


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



--autocomplete
vim.o.autocomplete = true
vim.o.complete="o,.,w,b,u"
vim.o.completeopt = "menuone,noselect,noinsert,preview,preinsert,popup"

--bring up autocomplete
vim.keymap.set('i', '<C-Space>','<C-N>')

