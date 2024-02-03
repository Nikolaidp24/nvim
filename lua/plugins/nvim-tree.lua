return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  -- event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = function()
    return {
      disable_netrw = true,
      hijack_netrw = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
    }
  end,
}
