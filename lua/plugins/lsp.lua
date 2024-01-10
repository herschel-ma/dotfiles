return {
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
