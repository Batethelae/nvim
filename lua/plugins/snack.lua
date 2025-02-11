return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below

    -- ?
    -- animate = { enabled = true },
    -- for big files: disables things like treesitter and lsp
    bigfile = { enabled = true },
    --allows deleting buffers without changing window layout
    bufdelete = { enabled = false },
    -- splashscreen/titlescreen
    dashboard = { enabled = false },
    debug = {enabled = false},
    dim = { enabled = false },
    -- file tree/ file picker / file explorer
    explorer = { enabled = false },
    git = { enabled = false },
    gitbrowse = { enabled = false },
    health = { enabled = false },
    -- shows intent lines
    indent = { enabled = true },
    input = { enabled = false},
    layout = { enabled = false},
    -- picker = { enabled = true },
    notifier = { enabled = true },
    -- quickfile = { enabled = true },
    -- scope = { enabled = true },
    -- scroll = { enabled = true },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
  },
}




