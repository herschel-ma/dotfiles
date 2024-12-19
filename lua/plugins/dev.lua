return {
  {
    "herschel-ma/ghtrending.nvim",
    dev = true,
    dependencies = { "MunifTanjim/nui.nvim" },
    build = "cargo build --release",
    config = function()
      require("ghtrending").setup()
    end,
  },
  {
    "baysmith/nvim-rs-hello",
    build = "cargo build --release",
  },
}
