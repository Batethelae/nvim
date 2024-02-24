-- local function colours_disable_background()
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end

return{
    {
        'morhetz/gruvbox',
        priority = 1000,
        lazy = false,
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end
    },
    {
        --vscode colour scheme
        'Mofiqul/vscode.nvim',
        priority = 100,
        lazy = true,
        config= function()
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
            --require('vscode').load()
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

}
