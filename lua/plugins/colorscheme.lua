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
    "Iron-E/nvim-highlite",
    config = function(_, opts)
      -- OPTIONAL: setup the plugin. See "Configuration" for information
      require("highlite").setup({ generator = { plugins = { vim = false }, syntax = false } })

      -- or one of the alternate colorschemes (see the "Built-in Colorschemes" section)
      -- vim.api.nvim_command("colorscheme highlite")
    end,
    lazy = false,
    priority = math.huge,
    version = "^4.0.0",
  },
  {
    "m15a/nvim-srcerite",
    dependencies = { "Iron-E/nvim-highlite" },
    config = function()
      vim.g.srcerite_inverse_vidual = false
      vim.g.srcerite_inverse_search = true
      vim.g.srcerite_inverse_match_paren = true
      -- vim.api.nvim_command("colorscheme srcerite")
    end,
  },
  {
    "polirritmico/monokai-nightasty.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    tag = "v2.0.0",
    opts = {},
  },
  {
    "Verf/deepwhite.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("deepwhite").setup({
        -- If you have some anti-blue light setting (f.lux, light bulb, or low blue light mode monitor),
        -- turn it on, this will set the background color to a cooler color to prevent the background from being too warm.
        low_blue_light = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "deepwhite",
    },
  },
}
