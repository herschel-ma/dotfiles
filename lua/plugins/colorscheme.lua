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
    "Yazeed1s/oh-lucy.nvim",
    lazy = false,
    config = function()
      vim.g.oh_lucy_italic_comments = false
      vim.g.oh_lucy_italic_keywords = false
      vim.g.oh_lucy_italic_variables = false
      vim.g.oh_lucy_evening_italic_functions = false
      vim.g.oh_lucy_evening_italic_comments = false
      vim.g.oh_lucy_evening_italic_keywords = false
      vim.g.oh_lucy_evening_italic_variables = false
    end,
  },
  {
    "fenetikm/falcon",
    config = function()
      vim.g.falcon_lightline = 1
    end,
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "vague2k/vague.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
      require("vague").setup({
        transparent = false, -- don't set background
        -- disable bold/italic globally in `style`
        bold = true,
        italic = true,
        style = {
          -- "none" is the same thing as default. But "italic" and "bold" are also valid options
          boolean = "bold",
          number = "none",
          float = "none",
          error = "bold",
          comments = "italic",
          conditionals = "none",
          functions = "none",
          headings = "bold",
          operators = "none",
          strings = "italic",
          variables = "none",

          -- keywords
          keywords = "none",
          keyword_return = "italic",
          keywords_loop = "none",
          keywords_label = "none",
          keywords_exception = "none",

          -- builtin
          builtin_constants = "bold",
          builtin_functions = "none",
          builtin_types = "bold",
          builtin_variables = "none",
        },
        -- plugin styles where applicable
        -- make an issue/pr if you'd like to see more styling options!
        plugins = {
          cmp = {
            match = "bold",
            match_fuzzy = "bold",
          },
          dashboard = {
            footer = "italic",
          },
          lsp = {
            diagnostic_error = "bold",
            diagnostic_hint = "none",
            diagnostic_info = "italic",
            diagnostic_ok = "none",
            diagnostic_warn = "bold",
          },
          neotest = {
            focused = "bold",
            adapter_name = "bold",
          },
          telescope = {
            match = "bold",
          },
        },

        -- Override highlights or add new highlights
        on_highlights = function(highlights, colors) end,

        -- Override colors
        colors = {
          bg = "#141415",
          inactiveBg = "#1c1c24",
          fg = "#cdcdcd",
          floatBorder = "#878787",
          line = "#252530",
          comment = "#606079",
          builtin = "#b4d4cf",
          func = "#c48282",
          string = "#e8b589",
          number = "#e0a363",
          property = "#c3c3d5",
          constant = "#aeaed1",
          parameter = "#bb9dbd",
          visual = "#333738",
          error = "#d8647e",
          warning = "#f3be7c",
          hint = "#7e98e8",
          operator = "#90a0b5",
          keyword = "#6e94b2",
          type = "#9bb4bc",
          search = "#405065",
          plus = "#7fa563",
          delta = "#f3be7c",
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vague",
    },
  },
}
