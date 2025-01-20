-- add a lightbulb if there is a code action available.
return {
  "kosayoda/nvim-lightbulb",
  config = function()
    require("nvim-lightbulb").setup({
      autocmd = { enabled = true },
    })
  end,
}
