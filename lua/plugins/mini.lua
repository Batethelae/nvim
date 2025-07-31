return{
    'echasnovski/mini.nvim',
    version = false,
    config = function ()
        require('mini.pairs').setup()
        require('mini.notify').setup({
            lsp_progress = {enable = false}
        })
    end

}
