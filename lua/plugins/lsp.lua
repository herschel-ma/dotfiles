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
                  procMacro = {
                    enable = false,
                  },
                  checkOnSave = {
                    command = "clippy",
                  },
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
