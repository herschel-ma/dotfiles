return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
        opts = {
          lsp = { auto_attach = true },
          -- $HOME/.local/share/nvim/lazy/LazyVim/lua/lazyvim/plugins/lsp/init.lua
          -- dev avante.nvim dev suggestion
          servers = {
            lua_ls = {
              -- mason = false, -- set to false if you don't want this server to be installed with mason
              -- Use this to add any additional keymaps
              -- for specific lsp servers
              -- ---@type LazyKeysSpec[]
              -- keys = {},
              settings = {
                -- dev avante.nvim dev suggestion
                Lua = {
                  runtime = {
                    version = "LuaJIT",
                    special = { reload = "require" },
                  },
                  workspace = {
                    checkThirdParty = false,
                    -- dev avante.nvim dev suggestion
                    library = {
                      vim.fn.expand("$VIMRUNTIME/lua"),
                      vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
                      vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
                    },
                  },
                  codeLens = {
                    enable = true,
                  },
                  completion = {
                    callSnippet = "Replace",
                  },
                  doc = {
                    privateName = { "^_" },
                  },
                  hint = {
                    enable = true,
                    setType = false,
                    paramType = true,
                    paramName = "Disable",
                    semicolon = "Disable",
                    arrayIndex = "Disable",
                  },
                },
              },
            },
            rust_analyzer = {
              settings = {
                ["rust-analyzer"] = {
                  memoryUsage = "Low",
                  -- 核心优化：禁用不需要的检查
                  checkOnSave = {
                    command = "clippy", -- 用 clippy 而不是默认的 check, 更全面
                    extraArgs = { "--no-deps" }, -- 极其重要！不检查依赖项，只检查你的代码
                    -- 减少内存使用：限制工作区范围
                    files = {
                      excludeDirs = { ".git", "target", "docs" },
                    },
                    -- 减少内存使用：限制分析范围
                    cargo = {
                      buildScripts = {
                        enable = true, -- 这个开启，对 bevy 必须
                        -- 但可以使用 exclude 减轻负担
                      },
                      allFeatures = false, -- 不要总是启用所用特性
                      noDefaultFeatures = true,
                    },
                    -- 最关键的优化:关闭一些极其耗内存的收集器
                    diagnostics = {
                      disabled = { "unlinked-file", "macro-error" }, -- 关闭未链接文件检查，对workspace 很有用
                      enable = true,
                    },
                    -- 对于 Bevy: 必须正确设置特性，否则 RA 会卡死
                    procMacro = {
                      enable = true, -- 必须开启，因为Bevy大量使用过程宏
                    },
                    -- 关闭飞行检查(很少用但耗资源)
                    enableFlyCheck = false,
                    -- 关闭某些耗内存的镜头（Lens) 功能
                    lens = {
                      enable = false, -- 或者精细控制: {enable = { refrences = true, .. }}
                    },
                  },
                },
                -- 防止LSP服务器占用过高导致系统卡死
                -- 设置内存限制（单位是MB）
                max_workspace_size = 300, -- 允许RA使用的最大内存
              },
            },
          },
        },
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      health = {
        checker = true,
      },
      presets = {
        lsp_doc_border = true,
      },
    },
  },
}
