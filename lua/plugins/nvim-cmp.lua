return {
  "hrsh7th/nvim-cmp",
  -- additional config
  opts = function()
    local cmp = require("cmp")
    cmp.setup({
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
    })
  end,
}
