return {
  {
    "github/copilot.vim",
    config = function()
      vim.g.copilot_assume_mapped = true
      -- enable copilot for all filetypes
      vim.g.copilot_filetypes = {
        "typescript",
        "javascript",
        "python",
        "lua",
      }
    end,
  },
}
