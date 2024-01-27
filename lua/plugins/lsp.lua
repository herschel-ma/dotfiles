return {

  -- from rust-tools.nvim to rustaceanvim
  -- refer: https://github.com/LazyVim/LazyVim/pull/2198
  -- this maybe merged with nvim-0.10.0 +, bucause of its buitin inlay hints feature.
  -- disable rust-tools.nvim
  -- { " simrat39/rust-tools.nvim", enabled = false },
  -- config rustacean
  {
    "mrcjkb/rustaceanvim",
    version = "^3",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
      {
        "lvimuser/lsp-inlayhints.nvim",
        opts = {},
      },
    },
    ft = { "rust" },
    opts = {
      inlay_hints = {
        highlight = "NonText",
      },
      tools = {
        hover_actions = {
          auto_focus = true,
        },
      },
      server = {
        on_attach = function(client, bufnr)
          require("lsp-inlayhints").on_attach(client, bufnr)
        end,
      },
    },
  },
  { "mrcjkb/rustaceanvim", enabled = false },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
        opts = { lsp = { auto_attach = true } },
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      health = {
        checker = true,
      },
      presets = {
        lsp_doc_border = true,
      },
    },
  },
}
