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
                  -- 内存优化设置
                  memoryUsage = "Low",

                  -- 检查设置
                  checkOnSave = {
                    command = "clippy",
                    extraArgs = {
                      "--no-deps",
                      "--",
                      "-A",
                      "clippy::too_many_arguments",
                      "-A",
                      "clippy::type_complexity",
                      "-A",
                      "clippy::needless_pass_by_value",
                    },
                  },

                  -- 文件排除设置
                  files = {
                    excludeDirs = {
                      ".git",
                      "target",
                      "docs",
                      -- "assets", -- 排除资源文件夹
                      "**/target/**", -- 递归排除所有target目录
                    },
                    -- watcher = "client", -- 使用客户端文件监视器
                  },

                  -- Cargo 设置
                  cargo = {
                    buildScripts = {
                      enable = true,
                      -- 排除一些不必要的构建脚本
                      excludeGlobs = { "**/benches/**", "**/examples/**" },
                    },
                    -- 对于 Bevy 项目，建议启用所有特性
                    allFeatures = true, -- 改为 true，因为 Bevy 需要
                    noDefaultFeatures = false, -- 改为 false
                    features = "all", -- 添加这个设置
                    -- target = "wasm32-unknown-unknown", -- 如果做 wasm 构建
                  },

                  -- 诊断设置
                  diagnostics = {
                    disabled = {
                      "unlinked-file",
                      "macro-error",
                      "inactive-code", -- 添加这个可以减少一些警告
                    },
                    enable = true,
                    warningsAsHint = { "unused_variables" }, -- 将某些警告降级为提示
                  },

                  -- 过程宏设置
                  procMacro = {
                    enable = true,
                    ignored = {
                      -- 可以添加一些特别耗资源的过程宏
                    },
                  },

                  -- 其他优化设置
                  enableFlyCheck = false,
                  lens = {
                    enable = false,
                    implementations = {
                      enable = false, -- 特别关闭实现镜头，很耗资源
                    },
                  },

                  -- 工作区设置
                  workspace = {
                    symbol = {
                      search = {
                        scope = "workspace", -- 限制符号搜索范围
                        limit = 1000, -- 限制搜索结果数量
                      },
                    },
                  },

                  -- 类型提示设置
                  -- inlayHints = {
                  --   enable = false, -- 关闭类型提示可以减少内存使用
                  -- },

                  -- 最大内存限制
                  max_workspace_size = 1500, -- 稍微增加一点，Bevy 项目需要更多内存
                },
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
