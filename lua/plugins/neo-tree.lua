return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      bind_to_cwd = true,
      window = {
        mappings = {
          -- disable fzf
          ["/"] = "none",
        },
      },
      filtered_items = {
        -- visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".git",
          ".gitignore",
          ".DS_Store",
        },
      },
    },
  },
}
