return {
  {
    "gen740/SmoothCursor.nvim",
    config = function()
      require("smoothcursor").setup()
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    -- lazy = true,
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
    -- lazy = true,
    priority = 1000,
    opts = {
      style = "modus_operandi",
      variant = "deuteranopia",
    },
  },
  -- optional 3 (it's pretty)
  { "akinsho/horizon.nvim", lazy = true, priority = 1000, version = "*" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      transparent_background = true,
      term_colors = true,
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = {}, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = { "bold" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
    },
    integrations = {
      dap = true,
      dap_ui = true,
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
        },
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
        inlay_hints = { background = true },
      },
    },
  },
  { "felipeagc/fleet-theme-nvim", priority = 1000 },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    transparent = true,
    opts = {},
  },
  { "nyoom-engineering/oxocarbon.nvim", priority = 1000 },
  {
    "2giosangmitom/nightfall.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "ayu-theme/ayu-vim",
    lazy = false,
  },
  {
    "jacoborus/tender.vim",
    lazy = false,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
    },
  },
}
