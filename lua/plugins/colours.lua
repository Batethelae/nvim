--colour schemes


vim.pack.add({
    'https://github.com/morhetz/gruvbox'
})


vim.pack.add({
    'https://github.com/Mofiqul/vscode.nvim'
})


require('vscode').setup({
    transparent = false,
    italic_comments = true,
    disable_nvimtree_bg = true,
    preset = true,
    mode = dark,
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },
})



vim.pack.add({
    'https://github.com/folke/tokyonight.nvim'
})

vim.pack.add({
    'https://github.com/rose-pine/neovim'
})

vim.pack.add({
    'https://github.com/sainnhe/everforest'
})


vim.pack.add({
    'https://github.com/catppuccin/nvim'
})

-- vim.pack.add({
--     'file:///home/max/projects/colourscheme_nvim'
-- })



--set default colourscheme
-- vim.cmd([[colorscheme colourscheme_nvim]])
vim.cmd([[colorscheme catppuccin-nvim]])
