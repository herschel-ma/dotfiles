local icons = LazyVim.config.icons
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "NStefan002/screenkey.nvim" },
  opts = {
    sections = {
      lualine_c = {
        LazyVim.lualine.root_dir(),
        {
          "diagnostics",
          symbols = {
            error = icons.diagnostics.Error,
            warn = icons.diagnostics.Warn,
            info = icons.diagnostics.Info,
            hint = icons.diagnostics.Hint,
          },
        },
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        { LazyVim.lualine.pretty_path() },
        -- :Screenkey toggle_statusline_component
        {
          function()
            local keys = require("screenkey").get_keys()
            if keys ~= nil then
              return "  " .. keys
            end
          end,
        },
      },
    },
  },
}
