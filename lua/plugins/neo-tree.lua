return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  cmd = "Neotree",
  opts = {
    filesystem = {
      bind_to_cwd = true,
      window = {
        mappings = {
          -- disable fzf
          ["/"] = "none",
        },
      },
    },
  },
}