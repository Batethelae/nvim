return{
    -- Mason (for installing lsp servers, linters, etc)
    {
        'mason-org/mason.nvim',
        opts = {}
    },
    -- lspconfig (default configs for lsp)
    {
        'neovim/nvim-lspconfig',
    },
    --autocompletion
    {
        'saghen/blink.cmp',
        -- optional: provides snippets for the snippet source
        -- dependencies = { 'rafamadriz/friendly-snippets' },

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = { preset = 'default' },
            appearance = {
                nerd_font_variant = 'mono'
            },

            completion = { documentation = { auto_show = true} },

            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },

            fuzzy = { implementation = "lua" },

            signature = { enabled = true }
        },
        opts_extend = { "sources.default" }
    }
}
