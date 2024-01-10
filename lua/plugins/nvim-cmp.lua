local cmp = require("cmp")

return {
  "hrsh7th/nvim-cmp",
  -- additional config
  opts = {
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },

    formatting = {
      format = function(_, item)
        local icons = require("lazyvim.config").icons.kinds
        item.menu = ""
        if icons[item.kind] then
          item.kind = icons[item.kind] .. item.kind
        end
        return item
      end,
    },
  },
}
