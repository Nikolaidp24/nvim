-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.python3_host_prog = "~/py3_cmp/bin/python"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_perl_provider = 0
require("config.lazy")
