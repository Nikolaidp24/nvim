return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = function()
    return {
      renderer = {
        highlight_opened_files = "all",
      },
      filters = {
        custom = {
          ".gitignore",
          ".DS_Store",
        },
      },
      disable_netrw = true,
      hijack_netrw = true,
      update_focused_file = {
        enable = true,
        update_root = true,
      },
      git = {
        timeout = 2000,
      },
    }
  end,
}
