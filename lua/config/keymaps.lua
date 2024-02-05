-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { remap = true }
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
-- Delete default keymaps
keymap.del("n", "<C-Left>")
keymap.del("n", "<C-Right>")
keymap.del("n", "<C-Up>")
keymap.del("n", "<C-Down>")
keymap.del("n", "<C-H>")
keymap.del("n", "<C-J>")
keymap.del("n", "<C-K>")
keymap.del("n", "<C-L>")
-- Switch between windows
keymap.set("n", "<C-Left>", "<C-w>h", opts)
keymap.set("n", "<C-Right>", "<C-w>l", opts)
keymap.set("n", "<C-Up>", "<C-w>k", opts)
keymap.set("n", "<C-Down>", "<C-w>j", opts)
-- Toggle NvimTree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle NvimTree", remap = true })
