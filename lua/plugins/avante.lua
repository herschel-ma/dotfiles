local function setup_avante()
  return {
    "yetone/avante.nvim",
    event = { "BufReadPost", "BufNewFile" },
    lazy = true,
    -- dev = true,
    version = false,
    build = "make",
    opts = {
      provider = "gemini",
      providers = {
        vendors = {
          ["deepseek"] = {
            __inherited_from = "openai",
            api_key_name = "DEEPSEEK_API_KEY",
            endpoint = "https://api.deepseek.com",
            model = "deepseek-chat",
            temperature = 0,
            max_tokens = 8192,
          },
        },
        gemini = {
          endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
          model = "gemini-2.0-flash",
          timeout = 30000, -- Timeout in milliseconds
          temperature = 0.3,
          max_tokens = 4096,
        },
      },
      dual_boost = {
        enabled = false,
        first_provider = "gemini",
        second_provider = "deepseek",
        prompt = "Based on the two reference outputs below, generate a response that incorporates elements from both but reflects your own judgment and unique perspective. Do not provide any explanation, just give the response directly. Reference Output 1: [{{provider1_output}}], Reference Output 2: [{{provider2_output}}]",
        timeout = 60000, -- Timeout in milliseconds
      },
      file_selector = {
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
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "echasnovski/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
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
  -- setup_avante(),
  -- setup_blink(),
}
