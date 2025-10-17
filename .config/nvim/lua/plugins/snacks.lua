return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = false},
    input = { enabled = true },
    notifier = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = false },
    dim = { enabled = true },
    animate = { enabled = true },

    picker = {
      enabled = false,
      sources = {
        explorer = {
          layout = {
            preview = "main",
            layout = {
              backdrop = false,
              width = 40,
              min_width = 40,
              height = 0,
              position = "left",
              border = "none",
              box = "vertical",
              { win = "list", border = "none" },
              { win = "preview", title = "{preview}", height = 0.4, border = "top" },
            },
          },
        },
      },
      formatters = {
        file = {
          filename_first = true,
        },
      },
    },
  },
}
