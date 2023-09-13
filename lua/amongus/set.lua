--line numbers
vim.opt.nu = true
vim.opt.relativenumber = true


--tab indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

--smart indenting
vim.opt.smartindent = true

--line wrapping
vim.opt.wrap = false

--incremental search highlighting
vim.opt.incsearch = true
vim.opt.hlsearch = true

--something about gui colours?
vim.opt.termguicolors = true

--never have less than 8 chars from bottom
vim.opt.scrolloff = 8
--always shows the signcolumn (left of the number line)
vim.opt.signcolumn = "yes"
--if somehting is a filename then it appends @-@ to it?
vim.opt.isfname:append("@-@")

--fast update time
vim.opt.updatetime = 50

--colours each column in comma seperated string 
--vim.opt.colorcolumn = "80"

--leader key <leader>
vim.g.mapleader = " "

--folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
--folds are not closed by default:
vim.opt.foldenable = false
