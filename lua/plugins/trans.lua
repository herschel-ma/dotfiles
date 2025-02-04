return {
  -- {
  --   "JuanZoran/Trans.nvim",
  --   build = function()
  --     require("Trans").install()
  --   end,
  --   keys = {
  --     { "<C-t>", mode = { "n", "x" }, "<Cmd>Translate<CR>", desc = " Translate" },
  --     -- { "mk", mode = { "n", "x" }, "<Cmd>TransPlay<CR>", desc = " Auto Play" },
  --     -- { "mi", "<Cmd>TranslateInput<CR>", desc = " Translate From Input" },
  --   },
  --   dependencies = { "kkharji/sqlite.lua" },
  --   opts = {
  --     dir = vim.fn.stdpath("data") .. "/",
  --   },
  -- },
  {
    "voldikss/vim-translator",
    config = function()
      vim.keymap.set("n", "<C-t>", "<Plug>Translate", { silent = true })
    end,
  },
  {
    "SilverofLight/kd_translate.nvim",
    dev = true,
    config = function()
      require("kd").setup({
        window = {
          -- your window config here
        },
      })
    end,
    vim.keymap.set("n", "<leader>kd", ":TranslateNormal<CR>", { silent = true }),
    vim.keymap.set("v", "<leader>kd", ":TranslateVisual<CR>", { silent = true }),
  },
}
