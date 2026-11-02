-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Shift-Q deletes the current buffer (tab thing)
map("n", "Q", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

-- Absolute scroll up and down
map("n", "<C-j>", "12<C-e>", { desc = "Absolute scroll down" })
map("n", "<C-k>", "12<C-y>", { desc = "Absolute scroll up" })

-- Relative scroll up and down
map("n", "<S-j>", "j<C-e>", { desc = "Relative scroll down" })
map("n", "<S-k>", "k<C-y>", { desc = "Relative scroll up" })

-- \ accepts first spelling correction
map("n", "\\", "1z=", { desc = "Correct spelling" })
