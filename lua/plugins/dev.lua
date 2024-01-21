return {
  {
    "herschel-ma/ghtrending.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    build = "cargo build --release; mv -f target/release/ghtrending_nvim.dll lua/ghtrending_nvim.dll",
    config = function()
      require("ghtrending").setup()
    end,
  },
}
