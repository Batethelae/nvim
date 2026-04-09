--plugins
vim.pack.add({
    'https://github.com/mason-org/mason.nvim'
})
require('mason').setup()

vim.pack.add({
    'https://github.com/neovim/nvim-lspconfig'
})


--lsp settings and things relating to lsp

--enable lsps
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')
vim.lsp.enable('jdtls')
vim.lsp.enable('pyright')

vim.lsp.enable('lua_ls')

vim.lsp.enable('html-lsp')
vim.lsp.enable('css-lsp')



--settings/keybinds for lsp related things

-- show error under cursor
vim.keymap.set('n', '<C-K>', function()
        vim.diagnostic.open_float()
    end)

-- show lsp hover info (default keybind)
-- vim.keymap.set('n', 'K', function()
--     vim.lsp.buf.hover()
--     end)
