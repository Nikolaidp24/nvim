-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_perl_provider = 0
vim.g.mkdp_markdown_css = "/usr/local/lib/node_modules/markdown-air/css/air.css"
require("config.lazy")
