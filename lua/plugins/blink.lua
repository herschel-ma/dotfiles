return {
  -- codeium
  {
    "Exafunction/codeium.nvim",
    cmd = "Codeium",
    build = ":Codeium Auth",
    opts = {
      enable_cmp_source = vim.g.ai_cmp,
      virtual_text = {
        enabled = vim.g.ai_cmp, --remove not
        key_bindings = {
          accept = false, -- handled by nvim-cmp / blink.cmp
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
    },
  },

  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        compat = { "codeium" },
        providers = { codeium = { kind = "Codeium" } },
      },
    },
  },
}
