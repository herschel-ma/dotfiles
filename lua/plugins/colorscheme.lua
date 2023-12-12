vim.g.vim_monokai_tasty_italic = 1
-- vim.g.vim_monokai_tasty_machine_tint = 1
vim.g.vim_monokai_tasty_highlight_active_window = 1
return {
  { "patstockwell/vim-monokai-tasty" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vim-monokai-tasty",
    },
  },
}
