return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    { "virchau13/tree-sitter-astro" },
  },
  event = { "BufReadPost", "BufNewFile" },
  -- config = function()
  --   require("nvim-treesitter.configs").setup({
  --     ensure_installed = {
  --       "lua",
  --       "javascript",
  --       "typescript",
  --       "html",
  --       "scss",
  --       "css",
  --       "astro",
  --     },
  --     highlight = { enable = true },
  --     indent = { enable = true },
  --   })
  -- end,
}
