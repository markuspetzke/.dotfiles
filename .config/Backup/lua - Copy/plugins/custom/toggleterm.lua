return {
  {
    "akinsho/toggleterm.nvim",
    config = true,
    cmd = "ToggleTerm",
    build = ":ToggleTerm",
    keys = { { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Horizontal Terminal (cwd)" } },
    opts = {
      direction = "horizontal",
      start_in_insert = true,
      close_on_exit = true,
    },
  },
}
