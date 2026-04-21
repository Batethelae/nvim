
vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter"
})


-- configs = require("nvim-treesitter.configs")

require('nvim-treesitter').setup({
    ensure_installed = { "rust","cpp", "c", "lua", "zig", "html", "css", "javascript", "java","python" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
})

