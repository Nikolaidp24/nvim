-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })
-- Toggle NvimTree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree", remap = true })
keymap.set("n", "<Tab>", "<cmd>bnext<cr>")
keymap.set("n", "<S-Tab>", "<cmd>bprev<cr>")
keymap.set("n", "<leader>bo", "<cmd>BufDelOthers<cr>", { desc = "Delete other buffers" })
keymap.del("n", "H")
keymap.del("n", "L")
keymap.del("n", "gc")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "d", '"_d', { remap = false })
keymap.set("v", "d", '"_d', { remap = false })
