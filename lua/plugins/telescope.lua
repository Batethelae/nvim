return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>sf', builtin.find_files, {desc = '[s]earch [f]iles'})
        vim.keymap.set('n', '<leader>sg', builtin.git_files, {desc = '[s]earch [g]it files'})
        vim.keymap.set('n', '<leader>sb', builtin.buffers, {desc = '[s]earch [b]uffers'})
        -- search grep then see files
        -- vim.keymap.set('n', '<leader>sw', function()
        --     builtin.grep_string({search = vim.fn.input("Grep > ") });
        -- end, {desc = '[s]earch for [w]ord'})
        vim.keymap.set('n', '<leader>sw', builtin.live_grep, {desc = "livegrep"})
    end
}
