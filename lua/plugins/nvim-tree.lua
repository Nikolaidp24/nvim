return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  -- event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = function()
    return {
      -- prefer_startup_root = false,
      -- sync_root_with_cwd = true,
      disable_netrw = true,
      hijack_netrw = true,
      -- respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
    }
  end,
}
