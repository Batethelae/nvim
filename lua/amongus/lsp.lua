--lsp settings and things relating to lsp

--enable lsps
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('jdtls')



--settings/keybinds for lsp related things

-- show error under cursor
vim.keymap.set('n', '<C-K>', function()
        vim.diagnostic.open_float()
    end)
-- show lsp hover info (default keybind)
-- vim.keymap.set('n', 'K', function()
--     vim.lsp.buf.hover()
--     end)

