local cmp = require("cmp")

return {
  {
    "sourcegraph/sg.nvim", -- Sourcegraph LSP client
    dependencies = {
      "nvim-lua/plenary.nvim", -- Common utilities
      "nvim-telescope/telescope.nvim", -- Fuzzy finder
    },
    config = function()
      require("sg").setup({
        accept_tos = true,
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "cody" })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      mapping = {
        ["<c-a>"] = cmp.mapping.complete({
          config = {
            sources = {
              { name = "cody" },
            },
          },
        }),
        -- for codeium[not use frequency]
        ["<c-q>"] = cmp.mapping.complete({
          config = {
            sources = {
              { name = "codeium" },
            },
          },
        }),
      },
    },
  },
}
