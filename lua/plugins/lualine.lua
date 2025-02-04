return{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()

        require('lualine').setup {
            options = {
                icons_enabled = true,
                --theme = 'auto',
                --theme = 'solarized_dark',
                -- theme = 'onedark',
                theme = 'jellybeans',
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
                    statusline = 1,
                    tabline = 1,
                    winbar = 1,
                }
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {{'filename', path = 1},  'filetype', 'encoding', 'filesize'},
                lualine_c = {"lsp_progress"},
                lualine_x = {'', {'branch', icon = ""}},
                lualine_y = {"fileformat"},
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

