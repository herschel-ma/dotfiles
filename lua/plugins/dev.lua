return {
  {
    "herschel-ma/ghtrending.nvim",
    -- dev = true,
    dependencies = { "MunifTanjim/nui.nvim" },
    -- build = "cargo build --release; mv -f target/release/ghtrending_nvim.dll lua/ghtrending_nvim.dll",
    build = "cargo build --release; mv -f target/release/libghtrending_nvim.so lua/ghtrending_nvim.so",
    config = function()
      require("ghtrending").setup()
    end,
  },
  {
    "baysmith/nvim-rs-hello",
    build = "cargo build --release",
  },
}
