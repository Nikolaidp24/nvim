return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").load("dragon")
      vim.cmd([[colorscheme kanagawa]])
    end,
  },
}
