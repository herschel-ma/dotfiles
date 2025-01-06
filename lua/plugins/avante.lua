local function setup_avante()
  return {
    "yetone/avante.nvim",
    event = { "BufReadPost", "BufNewFile" },
    lazy = true,
    -- dev = true,
    version = false,
    build = "make",
    opts = {
      provider = "openai",
      auto_suggestions_provider = "openai",
      openai = {
        endpoint = "https://api.deepseek.com/v1",
        model = "deepseek-chat",
        timeout = 30000,
        temperature = 0.7, -- 降低温度以获得更稳定的输出
        max_tokens = 4096, -- 减少最大 token 数以控制成本
        ["local"] = false,
      },
      file_selector = {
        --- @alias FileSelectorProvider "native" | "fzf" | "telescope" | string
        provider = "fzf",
        -- Options override for custom providers
        provider_opts = {},
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
        compat = {
          "avante_commands",
          "avante_mentions",
          "avante_files",
        },
      },
    },
  }
end

return {
  setup_avante(),
  setup_blink(),
}
