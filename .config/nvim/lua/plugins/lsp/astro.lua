-- plugins/astro-lsp.lua
return {
  -- Sage LazyVim: „Das hier erweitert nvim‑lspconfig“
  "neovim/nvim-lspconfig",

  -- opts kann eine Funktion sein, damit wir bestehende Optionen additiv ergänzen
  opts = function(_, opts)
    opts.servers = opts.servers or {}

    opts.servers.astro = {
      cmd = { "astro-ls", "--stdio" },
      filetypes = { "astro" },

      -- robuster root_dir‑Finder
      root_dir = function(fname)
        local util = require("lspconfig.util")
        return util.root_pattern(
          "astro.config.mjs",
          "astro.config.mts",
          "astro.config.cjs",
          "package.json",
          "tsconfig.json",
          "jsconfig.json",
          ".git"
        )(fname) or util.find_git_ancestor(fname) -- Fallback: nächstes Git‑Root or vim.loop.cwd() -- Fallback: aktuelles cwd
      end,

      init_options = { typescript = {} },

      before_init = function(_, cfg)
        local util = require("lspconfig.util")
        cfg.init_options.typescript.tsdk = util.get_typescript_server_path(cfg.root_dir)
      end,
    }
  end,
}
