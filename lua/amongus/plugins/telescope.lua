return {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>sf', builtin.find_files, {desc = '[s]earch [f]iles'})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = '[f]ind [b]uffers'})
        vim.keymap.set('n', '<leader>sw', function()
            builtin.grep_string({search = vim.fn.input("Grep > ") });
        end, {desc = '[s]earch for [w]ord'})  
    end
}
