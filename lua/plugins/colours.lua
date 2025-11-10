--colour schemes
-- default can be set with: 
return{
    {
        'morhetz/gruvbox',
        priority = 1000,
        lazy = false,
        -- config = function()
        --     vim.cmd([[colorscheme gruvbox]])
        -- end
    },
    {
        --vscode colour scheme
        'Mofiqul/vscode.nvim',
        priority = 100,
        lazy = false,
        config= function()
            -- vim.cmd([[colorscheme vscode]])
            --vim.cmd([[colorscheme vscode)
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
            -- require('vscode').load('dark')
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
    },
    {
        'sainnhe/everforest',
        priority = 1000,
        lazy = false,
        -- config = function()
        --     vim.cmd([[colorscheme everforest]])
        -- end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },
    {
        -- url = {"~/projects/colourscheme_nvim"}
        "colourscheme_nvim",
        dev = true,
        config = function()
            vim.cmd([[colorscheme colourscheme_nvim]])
        end
    }
}
