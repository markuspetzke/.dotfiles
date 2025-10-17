-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = true
vim.opt.encoding = "utf-8"
vim.opt.title = true
vim.g.lazyvim_prettier_needs_config = false
vim.diagnostic.config({ virtual_text = true })
vim.diagnostic.config({ virtual_lines = true })
vim.lsp.enable("astro")
vim.lsp.set_log_level("debug")
vim.filetype.add({ extension = { astro = "astro" } })

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local builtin = require("telescope.builtin")
local util = require("lazyvim.util") -- <- Teil von LazyVim

vim.keymap.set("n", "<leader>ff", function()
  util.root() -- <-- ändert das cwd auf Projekt-Root
  builtin.find_files() -- <-- danach normal Telescope öffnen
end, { desc = "Find Files (project root)" })
