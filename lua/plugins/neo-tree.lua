return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      bind_to_cwd = true,
      window = {
        mappings = {
          -- disable fzf
          ["<C-Left>"] = vim.cmd("wincmd h"),
          ["<C-Right>"] = vim.cmd("wincmd l"),
          ["<C-Up>"] = vim.cmd("wincmd k"),
          ["<C-Down>"] = vim.cmd("wincmd j"),
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
