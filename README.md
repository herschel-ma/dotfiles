# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## memo

I just installed from LazyVim and the use command LazyExtras to enable some magic
features. It should be works fine with this config.

But something prerequied by it, for example:

- Python should be installed, and pynvim should be installed;
- Nodejs should be installed(I used nvm install nodejs with scoop);
- Go should be installed;
- Rust should be installed;
- Something else, for example, lazygit, fg, rg, gzip, unzip, etc.
  I installed them with Scoop.

I did some extra stuff to make it works for me better. For example:

- Configed sth to install ToggleTerm.nvim and make it works for pwsh or nu.
  Btw, I use alacritty instead of Windows Terminal.

- Used codeium as my AI assistant. Maybe Copilot will be more powerful,
  but it is not free.
- Try leetcode.nvim to solve problem in neovim.
- Add a translator plugin that called Trans.nvim, it took me some time for
  some reason. You need install sqlite.dll manually and add it to nvim runtime PATH,
  and a static dictionary also need that you can install it with Trans.nvim
  after added dir to chage it's default configuration, awesome!

I recently installed LazyVim and used the LazyExtras command to enable some additional
features. The configuration seems to be working well with this setup.
However, there are certain prerequisites for its proper functioning:

- Python should be installed, and pynvim needs to be set up.
- Nodejs is required (I used nvm to install Nodejs with scoop).
- Go must be installed.
- Rust is a prerequisite.
- Other dependencies include lazygit, fg, rg, gzip, unzip, etc., which I installed
  using Scoop.

To enhance my experience, I made some additional configurations, such as:

- Setting up configurations to install ToggleTerm.nvim and making it compatible with
  pwsh or nu. I use Alacritty instead of Windows Terminal.
  > Here's the link of [alacritty.yml](https://gist.github.com/herschel-ma/332b98b4c6ff4d323e7932f6ff911970).
- Using Codeium as my AI assistant. While Copilot may be more powerful, it's not
  free.
- Trying leetcode.nvim to solve problems in Neovim.
- Adding a translator plugin called Trans.nvim. It took some effort;
  you need to install sqlite.dll manually and add it to the nvim runtime PATH.
  A static dictionary is also required, and you can install it with Trans.nvim after
  adding the directory to change its default configuration. Awesome!
