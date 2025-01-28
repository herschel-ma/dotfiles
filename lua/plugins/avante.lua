local function setup_avante()
  return {
    "yetone/avante.nvim",
    event = { "BufReadPost", "BufNewFile" },
    lazy = true,
    -- dev = true,
    version = false,
    build = "make",
    opts = {
      provider = "deepseek",
      vendors = {
        deepseek = {
          __inherited_from = "openai",
          api_key_name = "DEEPSEEK_API_KEY",
          endpoint = "https://api.deepseek.com",
          model = "deepseek-coder",
        },
      },
      file_selector = {
        --- @alias FileSelectorProvider "native" | "fzf" | "telescope" | string
        provider = "fzf",
        -- Options override for custom providers
        provider_opts = {},
      },
      compat = {
        "avante_commands",
        "avante_mentions",
        "avante_files",
      },
      -- experience power of ai suggestions
      behaviour = {
        auto_suggestions = true, -- Experimental stage
        auto_set_highlight_group = true,
        auto_set_keymaps = true,
        auto_apply_diff_after_generation = false,
        support_paste_from_clipboard = false,
        minimize_diff = true, -- Whether to remove unchanged lines when applying a code block
      },
      suggestion = {
        dismiss = "<C-e>",
      },
      on_error = function(err)
        vim.notify("Avante error: " .. err, vim.log.levels.ERROR)
      end,
    },
    dependencies = {
      { "stevearc/dressing.nvim", lazy = true },
      { "nvim-lua/plenary.nvim", lazy = true },
      { "MunifTanjim/nui.nvim", lazy = true },
      { "nvim-tree/nvim-web-devicons", lazy = true },
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
            use_absolute_path = true,
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
  }
end

local function setup_blink()
  return {
    "saghen/blink.cmp",
    event = "InsertEnter",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      sources = {
        providers = {
          avante_commands = {
            name = "avante_commands",
            module = "blink.compat.source",
            score_offset = 90, -- show at a higher priority than lsp
            opts = {},
          },
          avante_files = {
            name = "avante_files",
            module = "blink.compat.source",
            score_offset = 100, -- show at a higher priority than lsp
            opts = {},
          },
          avante_mentions = {
            name = "avante_mentions",
            module = "blink.compat.source",
            score_offset = 1000, -- show at a higher priority than lsp
            opts = {},
          },
        },
      },
    },
  }
end

return {
  setup_avante(),
  setup_blink(),
}
