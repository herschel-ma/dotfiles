# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## memo

I recently installed LazyVim and used the LazyExtras command to enable some additional
features. The configuration seems to be working well with this setup installed
except sences that some plugins I set dev to true for developing purpose.

However, there are certain prerequisites for its proper functioning:

- Python should be installed, and pynvim needs to be set up.
- NodeJs is required (I used nvm to install Nodejs with scoop).
- Go must be installed.
- Rust is a prerequisite.
- Other dependencies include lazygit, fg, rg, gzip, unzip, etc., which I installed
  using Scoop on windows.

To enhance my experience, I made some additional configurations, such as:

- Setting up configurations to install ToggleTerm.nvim and making it compatible with
  pwsh or nu. ~~I use Alacritty instead of Windows Terminal~~.

  > Here's the link of [alacritty.yml](https://gist.github.com/herschel-ma/332b98b4c6ff4d323e7932f6ff911970) on Windows.

  BTW, I'm using wezterm on Windows PC now, it's better.

  > Here's the config of [wezterm](https://gist.github.com/herschel-ma/725a1e6956d62ff94097dcc561ecd57c) on
  > Windows

- ~~Using Codeium as my AI assistant. While Copilot may be more powerful, it's not
  free.~~
- Trying leetcode.nvim to solve problems in Neovim.
- Adding a translator plugin called ~~Trans.nvim~~. It took some effort;
  you need to install sqlite.dll manually and add it to the nvim runtime PATH.
  A static dictionary is also required, and you can install it with Trans.nvim after
  adding the directory to change its default configuration. Awesome!
  BTW, I'm using a plugin called `kd_translate.nvim` to translate English to Chinese,
  which tooks [kd](https://github.com/Karmenzind/kd) as backend. It's a powerful, cross-platform and super fast dictionary made by Go programming language.
  I have made some changes for that plugin.
  - [origin version](https://github.com/SilverofLight/kd_translate.nvim)

- ~~LazyVim currently has an issue caused by recent updates to the APIs of the mason and mason-lspconfig plugins. These updates introduced new features such as automatic LSP server installation. However, LazyVim relies on their old, unofficial, internal APIs, which has led to compatibility problems. A fix has not been released yet.~~

- Update LazyVim to 15.7.1.
