-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.python3_host_prog = "~/py3_cmp/bin/python"
-- vim.g.ruby_host_prog = "~/.rbenv/versions/3.1.2/bin/neovim-ruby-host"
vim.g.loaded_ruby_provider = 0
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_perl_provider = 0
require("config.lazy")
