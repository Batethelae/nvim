return{
    'nvim-lualine/lualine.nvim',
    config = function()

        require('lualine').setup {
            options = {
                icons_enabled = true,
                --theme = 'auto',
                --theme = 'solarized_dark',
                -- theme = 'onedark',
                theme = 'gruvbox',
                component_separators = { left = '|', right = '|'},
                section_separators = { left = '', right = ''},
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = {'mode'},
                -- lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_b = {{'filename', path = 1},  'filetype', 'encoding', 'filesize'},
                lualine_c = { --[["os.date('%a')", 'data', "vim.api.nvim_win_get_number(0)",]] "lsp_progress" },
                lualine_x = {'selectioncount', {'branch', icon = ""}},
                -- lualine_y = { "datetime"},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }


    end
}

