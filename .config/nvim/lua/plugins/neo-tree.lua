return {
  'nvim-neo-tree/neo-tree.nvim',
      close_if_last_window = true,
      window = {
        width = 30,
      },
      buffers = {
        follow_current_file = true,
      },
      filesystem = {
        follow_current_file = true,
        filtered_items = {
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_by_name = {
            "node_modules",
          },
        },
      },
}
