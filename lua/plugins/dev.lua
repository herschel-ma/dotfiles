return {
  {
    "herschel-ma/ghtrending.nvim",
    dev = true,
    dependencies = { "MunifTanjim/nui.nvim" },
    build = "cargo build --release",
    config = function()
      require("ghtrending").setup()
      vim.keymap.set(
        { "n", "v" },
        "<leader>gtr",
        "<cmd>GhtrendingRepo<cr>",
        { silent = true, desc = "View Trednging Repos." }
      )
      vim.keymap.set(
        { "n", "v" },
        "<leader>gtd",
        "<cmd>GhtrendingDev<cr>",
        { silent = true, desc = "View Trending Developers" }
      )
      vim.api.nvim_set_keymap("n", "<leader>gtod", "<cmd>GhtrendingOpenDev<cr>", { silent = true, noremap = true })
      vim.api.nvim_set_keymap("n", "<leader>gtor", "<cmd>GhtrendingOpenRepo<cr>", { silent = true, noremap = true })
    end,
  },
  {
    "baysmith/nvim-rs-hello",
    build = "cargo build --release",
  },
}
