return {
  {
    "JuanZoran/Trans.nvim",
    build = function()
      require("Trans").install()
    end,
    keys = {
      { "<C-t>", mode = { "n", "x" }, "<Cmd>Translate<CR>", desc = " Translate" },
      -- { "mk", mode = { "n", "x" }, "<Cmd>TransPlay<CR>", desc = " Auto Play" },
      -- { "mi", "<Cmd>TranslateInput<CR>", desc = " Translate From Input" },
    },
    dependencies = { "kkharji/sqlite.lua" },
    opts = {
      dir = vim.fn.stdpath("data") .. "/",
    },
  },
}
