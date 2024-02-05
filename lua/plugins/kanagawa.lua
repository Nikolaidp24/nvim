return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    opts = function()
      return {
        transparent = true,
        terminalColors = true,
        -- dimInactive = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        overrides = function(colors)
          local theme = colors.theme
          return {
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },

            -- Save an hlgroup with dark background and dimmed foreground
            -- so that you can use it where your still want darker windows.
            -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
            -- NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

            -- Popular plugins that open floats will link to NormalFloat by default;
            -- set their background accordingly if you wish to keep them dark and borderless
            LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

            --Borderless and transparent floating telescope windows
            TelescopeTitle = { fg = theme.ui.special, bg = "none" },
            TelescopePromptNormal = { bg = "none" },
            TelescopePromptBorder = { fg = "#04D9FF", bg = "none" },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = "none" },
            TelescopeResultsBorder = { fg = "#04D9FF", bg = "none" },
            TelescopePreviewNormal = { bg = "none" },
            TelescopePreviewBorder = { bg = "none", fg = "#04D9FF" },
          }
        end,
      }
    end,
    -- vim.cmd("colorscheme kanagawa-wave"),
  },
}