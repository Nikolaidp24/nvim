return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    opts = function()
      return {
        transparent = true,
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
        -- overrides = function()
        --   return {
        --     NormalFloat = { bg = "none" },
        --     FloatBorder = { bg = "none" },
        --     FloatTitle = { bg = "none" },
        --   }
        -- end,
      }
    end,
    -- vim.cmd("colorscheme kanagawa-wave"),
  },
}
