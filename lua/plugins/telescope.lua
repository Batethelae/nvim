--dependency
vim.pack.add({
    'https://github.com/nvim-lua/plenary.nvim'
})


vim.pack.add({
    'https://github.com/nvim-telescope/telescope.nvim'
})



local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>sf', builtin.find_files, {desc = '[s]earch [f]iles'})
-- vim.keymap.set('n', '<leader>sg', builtin.git_files, {desc = '[s]earch [g]it files'})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {desc = '[s]earch [b]uffers'})
vim.keymap.set('n', '<leader>sw', builtin.live_grep, {desc = "[s]earch [w]ord"})

require('telescope').setup({
    defaults={
        mappings={
            --close on single esc
            i = {["<esc>"] = require("telescope.actions").close,}
        }
    }
})
