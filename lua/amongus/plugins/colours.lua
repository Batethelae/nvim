local function colours_disable_background()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return{
    'Mofiqul/vscode.nvim',
    priority = 100,
    config= function()
        --vim.cmd([[colorscheme vscode)
        require('vscode').setup({
            transparent = true,
            italic_comments = true,
            disable_nvimtree_bg = true,
            preset = true,
            mode = dark,

            color_overrides = {
                vscLineNumber = '#FFFFFF',
            },
        })
        require('vscode').load()
    end,
}
