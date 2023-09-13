
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--moving around highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--appends line below to current line with a space
vim.keymap.set("n", "J", "mzJ`z")
--moving with <C-d> and <C-u> cursor will stay in place
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--search terms will stay in the middle of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--when pasting over text (with <leader>p) it won't put that pasted over text into the register
vim.keymap.set("x", "<leader>p", "\"_dP")
--will delete into void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

--<leader>y will copy into system clipboard (have to set up clipboard somehow????)
--vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", ":w !clip.exe")
--vim.keymap.set("n", "<leader>Y", "\"+Y")

-- formats
vim.keymap.set("n", "<leader>pf", function()
    vim.lsp.buf.format()
end)


--to replace current word
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


--to (hopefully) fold and unfold with one button:
vim.keymap.set("n", "<leader>f", "za" )
