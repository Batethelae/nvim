
vim.pack.add({
    'https://github.com/nvim-mini/mini.nvim'
})

require('mini/pairs').setup()
require('mini.icons').setup()
require('mini/notify').setup({
    lsp_progress = {enable = True}
})

-- function active_statusline()
--     local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
--     local filename = MiniStatusline.section_filename({ trunc_width = 140})
--     local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 140})
--     local location = MiniStatusline.section_location({ trunc_width = 75})
--
--     return MiniStatusline.combine_groups({
--         {hl = mode_hl, strings = { mode }},
--         {hl = miniStatusLineFilename, strings = {"|",filename,"|", fileinfo,"|"}},
--         -- {hl = mode_hl, strings = {fileinfo,filename}},
--         -- {hl = mode_hl, strings = {filename}},
--         -- {hl = mode_hl, strings = {filename}},
--     })
-- end
--
-- require('mini/statusline').setup({
--     content={
--         active = active_statusline
--     }
--
-- })
--


