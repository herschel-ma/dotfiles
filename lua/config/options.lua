-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.o.background = "light"

-- set default shell to nushell|pwsh in windows.
-- https://github.com/neovim/neovim/issues/19648
-- local powershell_options = {
--   shell = vim.fn.executable("nu") and "nu.exe",
--   shellcmdflag = "-c",
--   shellquote = "",
--   shellxquote = "",
--
--   -- shell = vim.fn.executable("pwsh") and "pwsh" or "powershell",
--   -- shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
--   -- shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
--   -- shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
--   -- shellquote = "",
--   -- shellxquote = "",
-- }
--
-- -- set default sqlite.dll path to vim.fn.stdpath("data"), reqiured by sqlite.luat that Trans.nvim depend on
--
-- if vim.fn.has("win32") then
--   for option, value in pairs(powershell_options) do
--     vim.o[option] = value
--   end
-- end

vim.env.PATH = "~/venv/bin" .. vim.env.PATH
vim.o.list = true
vim.o.lcs = [[tab:▸ ,space:.,trail:-,eol:↵]]
vim.o.swf = false

if vim.g.neovide then
  vim.o.guifont = "DankMono Nerd Font Mono:h12.5:w0.1"
  vim.g.neovide_theme = "dark"
  vim.g.neovide_refresh_rate = 50
  vim.g.neovide_no_idle = false
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_fullscreen = false
  vim.g.noevide_remember_window_size = false
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
vim.o.winbar = " %{%v:lua.vim.fn.expand('%:t')%}  %{%v:lua.require'nvim-navic'.get_location()%}"
-- enable screenkey statusline default
vim.g.screenkey_statusline_component = true
-- vim.g.sqlite_clib_path = vim.fn.stdpath("data") .. "/sqlite3.dll"
