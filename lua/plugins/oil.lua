return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  init = function()
    vim.keymap.set("n", "-", "<cmd>lua require('oil').open()<CR>", { desc = "Open parent directory" })
  end,
}
