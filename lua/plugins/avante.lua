return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = "v0.0.6",
    build = "make BUILD_FROM_SOURCE=true",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "zbirenbaum/copilot.lua",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
    config = function()
      -- Load avante_lib first
      local avante_lib = require('avante_lib')
      avante_lib.load()

      -- Then set up avante
      require('avante').setup({
        provider = "claude",  -- or "openai" if you prefer
        behaviour = {
          auto_suggestions = false,
          auto_set_highlight_group = true,
          auto_set_keymaps = true,
        },
        mappings = {
          submit = {
            normal = "<CR>",
            insert = "<C-s>",
          },
        },
      })
    end,
  },
}
