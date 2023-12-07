-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Save changes - Exit
keymap.set("n", "<Space>w", ":w<Enter>", opts)
keymap.set("n", "<Space>q", ":q<Enter>", opts)

-- Up - Down line
keymap.set("n", "<A-j>", ":m +1<Enter>", opts)
keymap.set("n", "<A-l>", ":m -2<Enter>", opts)
