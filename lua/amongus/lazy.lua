require("lazy").setup({
    {import = "amongus.plugins"},
},

    {
        install = {
            colorscheme = {"gruvbox"},
        },
        checker = {
            enabled = true,
            notify = false,
        },
        change_detection = {
            notify = false,
        },

    })
