return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.stdpath("config") .. "/lua"] = true,
              },
              checkThirdParty = false,
              maxPreload = 10000,
              preloadFileSize = 1000,
            },
          },
        },
      },
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "off",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace",
            },
          },
        },
      },
      -- pylsp = {
      --   settings = {
      --     pylsp = {
      --       plugins = {
      --         pycodestyle = {
      --           enabled = false,
      --         },
      --         pyflakes = {
      --           enabled = false,
      --         },
      --         mccabe = {
      --           enabled = false,
      --         },
      --       },
      --     },
      --   },
      -- },
    },
  },
}
