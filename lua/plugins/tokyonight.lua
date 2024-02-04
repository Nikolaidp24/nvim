return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = function()
    return {
      on_highlights = function(hl, colors)
        hl.CursorLineNr = { fg = colors.orange }
      end,
      transparent = true,
      style = "moon",
      styles = {
        floats = "transparent",
        keywords = { italic = true },
        sidebars = "transparent",
      },
    }
  end,
}
