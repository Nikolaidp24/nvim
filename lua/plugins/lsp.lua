return {
  "neovim/nvim-lspconfig",
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
      -- pyright = {
      --   settings = {
      --     python = {
      --       analysis = {
      --         typeCheckingMode = "basic",
      --       },
      --     },
      --   },
      -- },
      -- pylsp = {
      --   settings = {
      --     pylsp = {
      --       configurationSources = { "pycodestyle" },
      --       plugins = {
      --         mccabe = {
      --           enabled = true,
      --         },
      --         pyflakes = {
      --           enabled = true,
      --         },
      --         pycodestyle = {
      --           enabled = true,
      --           maxLineLength = 100,
      --         },
      --         flake8 = {
      --           enabled = false,
      --           maxLineLength = 100,
      --         },
      --         black = {
      --           enabled = false,
      --         },
      --         isort = {
      --           enabled = false,
      --         },
      --         autopep8 = {
      --           enabled = true,
      --         },
      --         yapf = {
      --           enabled = true,
      --         },
      --       },
      --     },
      --   },
      -- },
    },
  },
}
