-- return{
--     "williamboman/mason.nvim"
-- }






-- [[
return{
    --lsp configuration
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        },


        config = function()
            local lsp = require("lsp-zero")

            lsp.preset("recommended")

            -- lsp.ensure_installed({
            --     'rust_analyzer',
            --     'clangd',
            --     --'zls',
            --     --'html',
            --     --'cssls',
            --     --'eslint',
            --     --'tsserver',
            --     -- 'lua_ls',
            -- })

            -- Fix Undefined global 'vim'
            lsp.nvim_workspace()



            local cmp = require('cmp')
            local cmp_select = {behavior = cmp.SelectBehavior.Select}
            local cmp_mappings = lsp.defaults.cmp_mappings({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            })

            cmp_mappings['<Tab>'] = nil
            cmp_mappings['<S-Tab>'] = nil

            lsp.setup_nvim_cmp({
                mapping = cmp_mappings
            })

            lsp.set_preferences({
                suggest_lsp_servers = false,
                sign_icons = {
                    error = 'E',
                    warn = 'W',
                    hint = 'H',
                    info = 'I'
                }
            })

            lsp.on_attach(function(client, bufnr)
                local opts = {buffer = bufnr, remap = false}

                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
                vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
                vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
            end)

            lsp.setup()

            vim.diagnostic.config({
                virtual_text = true
            })


            --this enables javascript lsp to actually work. without setting the cwd it doesn't work
            -- require('lspconfig').tsserver.setup{
            --     firetypes = {"javascript"},
            --     root_dir = function () return vim.fn.getcwd()
            --     end
            -- }
            -- require'lspconfig'.rust_analyzer.setup{
            --     settings = {
            --         ['rust-analyzer'] = {
            --             diagnostics = {
            --                 enable = true;
            --             }
            --         }
            --     }
            -- }

            --this enables javascript lsp to actually work. without setting the cwd it doesn't work
            -- require('ts-ls').tsserver.setup{
            --     firetypes = {"javascript"},
            --     root_dir = function () return vim.fn.getcwd()
            --     end
            -- }
            -- require'ts-ls'.rust_analyzer.setup{
            --     settings = {
            --         ['rust-analyzer'] = {
            --             diagnostics = {
            --                 enable = true;
            --             }
            --         }
            --     }
            -- }

        end
    },
    --Autocompletion
    -- {
    --     'saghen/blink.cmp',
    --     -- optional: provides snippets for the snippet source
    --     dependencies = 'rafamadriz/friendly-snippets',
    --
    --     -- use a release tag to download pre-built binaries
    --     version = '*',
    --     -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    --     -- build = 'cargo build --release',
    --     -- If you use nix, you can build from source using latest nightly rust with:
    --     -- build = 'nix run .#build-plugin',
    --
    --     ---@module 'blink.cmp'
    --     ---@type blink.cmp.Config
    --     opts = {
    --         -- 'default' for mappings similar to built-in completion
    --         -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
    --         -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
    --         -- See the full "keymap" documentation for information on defining your own keymap.
    --         keymap = { preset = 'default' },
    --
    --         appearance = {
    --             -- Sets the fallback highlight groups to nvim-cmp's highlight groups
    --             -- Useful for when your theme doesn't support blink.cmp
    --             -- Will be removed in a future release
    --             use_nvim_cmp_as_default = true,
    --             -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
    --             -- Adjusts spacing to ensure icons are aligned
    --             nerd_font_variant = 'mono'
    --         },
    --
    --         -- Default list of enabled providers defined so that you can extend it
    --         -- elsewhere in your config, without redefining it, due to `opts_extend`
    --         sources = {
    --             default = { 'lsp', 'path', 'snippets', 'buffer' },
    --         },
    --     },
    --     opts_extend = { "sources.default" }
    -- }
}
-- ]]
