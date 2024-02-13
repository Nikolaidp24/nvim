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
            FloatBorder = { fg = colors.palette.lightBlue, bg = "none" },
            FloatTitle = { bg = "none" },

            -- Bufferline Configuratons
            -- BufferLineBufferSelected = { fg = "#151515", bg = colors.palette.lightBlue },
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
            TelescopePromptBorder = { fg = colors.palette.carpYellow, bg = "none" },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = "none" },
            TelescopeResultsBorder = { fg = colors.palette.carpYellow, bg = "none" },
            TelescopePreviewNormal = { bg = "none" },
            TelescopePreviewBorder = { bg = "none", fg = colors.palette.carpYellow },
          }
        end,
      }
    end,
    -- vim.cmd("colorscheme kanagawa-wave"),
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavor = "mocha",
      transparent_background = true,
      -- custom_highlights = {
      --   illuminatedWord = { bg = "#d7005f" },
      -- },
      styles = {
        loop = { "bold" },
        functions = { "italic" },
        keywords = { "italic", "bold" },
        booleans = { "bold" },
        types = { "bold" },
        strings = { "italic" },
      },
    },
  },

  {
    "folke/tokyonight.nvim",
    opts = function()
      return {
        on_highlights = function(hl, colors)
          hl.CursorLineNr = { fg = colors.orange, bold = true }
          hl.LineNr = { fg = "#888888", bg = "none", bold = false }
        end,
        transparent = true,
        style = "moon",
        styles = {
          floats = "transparent",
          keywords = { bold = true },
          sidebars = "transparent",
        },
      }
    end,
  },
}
