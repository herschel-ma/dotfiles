-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { silent = false, noremap = true }
local map = vim.api.nvim_set_keymap
map("i", "jk", "<ESC>", opts)
map("i", "kj", "<ESC>", opts)
-- 持续缩进 excellent
-- vim.keymap.set("v", "<", "<gv", opts)
-- vim.keymap.set("v", ">", ">gv", opts)
map("n", "L", "$", opts)
map("n", "H", "^", opts)
