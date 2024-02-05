return {
  "folke/tokyonight.nvim",
  lazy = true,
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
}
