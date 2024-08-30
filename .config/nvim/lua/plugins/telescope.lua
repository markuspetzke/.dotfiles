return {
    'nvim-telescope/telescope.nvim', branch = 'master',
    keys = {
        -- add a keymap to browse plugin files
        -- stylua: ignore
        {
          "<leader>fp",
          function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
          desc = "Find Plugin File",
        },
      },
      -- change some options
      opts = {
        defaults = {
          path_display = 
            {filename_first =  {
              reverse_direction = false,
            }},
          

          layout_strategy = "horizontal",
          layout_config = { 
            prompt_position = "bottom",   
        },
          sorting_strategy = "ascending",
          winblend = 0,

        },
      },
}