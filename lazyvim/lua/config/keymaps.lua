-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("i", "jj", "<ESC>") -- Normal mode
map("n", "<C-a>", "ggVG") -- Select all
map("n", "<A-x>", LazyVim.ui.bufremove) -- Delete Buffer
map("n", "<C-n>", "<CMD>nohl<CR>") -- Clean hlsearch
map("n", "<C-d>", "<CMD>q<CR>")

map("n", "[p", "yyp")
