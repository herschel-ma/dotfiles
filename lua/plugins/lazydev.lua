return {
  "folke/lazydev.nvim",
  ft = "lua",
  cmd = "LazyDev",
  opts = {
    dependencies = {
      -- Manage libuv types with lazy. Plugin will never be loaded
      { "Bilal2453/luvit-meta", lazy = true },
    },
    library = {
      { path = "~/projects/avante.nvim/lua", words = { "avante" } },
      { path = "~/projects/ghtrending.nvim/lua", words = { "ghtrending" } },
      { path = "~/projects/kd_translate.nvim/lua", words = { "kd" } },
      { path = "luvit-meta/library", words = { "vim%.uv" } },
    },
  },
}
