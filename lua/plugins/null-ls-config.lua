return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufReadPre",
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        -- nls.builtins.formatting.prettierd,
        -- lua
        nls.builtins.formatting.stylua,
        --python
        nls.builtins.formatting.autopep8,
        nls.builtins.diagnostics.flake8,
      },
    }
  end,
}
