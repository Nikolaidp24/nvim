-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("config.lazy")
require("nvim-treesitter.install").prefer_git = true
