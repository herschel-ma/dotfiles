return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
    },
  },
  -- optional 2 (high contrast, light one is nice)
  {
    "miikanissi/modus-themes.nvim",
    priority = 1000,
    opts = {
      style = "modus_operandi",
      variant = "deuteranopia",
    },
  },
  -- optional 3 (it's pretty)
  { "akinsho/horizon.nvim", version = "*" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "horizon",
    },
  },
}
