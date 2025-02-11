--line numbers
vim.opt.number = true
vim.opt.relativenumber = true
--always shows the signcolumn (left of the number line)
vim.opt.signcolumn = "yes"

--tab indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

--smart indenting
vim.opt.smartindent = true

--line wrapping
vim.opt.wrap = true
vim.opt.linebreak= true

--incremental search highlighting
vim.opt.incsearch = true
vim.opt.hlsearch = true

--never have less than 8 chars from bottom
vim.opt.scrolloff = 8

--fast update time
vim.opt.updatetime = 50

--folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
--folds are not closed by default:
vim.opt.foldenable = false


