-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.o.background = "light"

-- set default shell to nushell|pwsh in windows.
-- https://github.com/neovim/neovim/issues/19648
local powershell_options = {
  shell = vim.fn.executable("nu") and "nu.exe",
  shellcmdflag = "-c",
  shellquote = "",
  shellxquote = "",

  -- shell = vim.fn.executable("pwsh") and "pwsh" or "powershell",
  -- shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  -- shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  -- shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  -- shellquote = "",
  -- shellxquote = "",
}

if vim.fn.has("win32") then
  for option, value in pairs(powershell_options) do
    vim.o[option] = value
  end
end
