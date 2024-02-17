return {
  "nvim-tree/nvim-tree.lua",
  event = "VeryLazy",
  opts = {
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
    view = {
      float = {
        enable = true,
      },
    },
  },
}
